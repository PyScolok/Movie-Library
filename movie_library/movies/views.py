from django.shortcuts import redirect
from django.views.generic import ListView, DetailView
from django.views.generic.base import View


from .forms import ReviewForm, CommentForm
from .models import Movie, Actor, Genre, Review


class GenresYears:
    """Жанры и годы выхода фильмов"""

    def get_genres(self):
        return Genre.objects.all()
    
    def get_years(self):
        return Movie.objects.filter(draft=False).values('year').order_by('-year')


class MoviesView(GenresYears, ListView):
    """Вывод фильмов"""

    model = Movie
    queryset = Movie.objects.filter(draft=False)
    paginate_by = 2


class MovieDetailView(GenresYears, DetailView):
    """Детальное описание фильма"""

    model = Movie
    slug_field = 'url'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['form'] = ReviewForm()
        return context


class AddReview(View):
    """Добавление отзыва"""

    def post(self, request, pk):
        form = ReviewForm(request.POST)
        movie = Movie.objects.get(id=pk)
        if form.is_valid():
            form = form.save(commit=False)
            form.movie = movie
            form.save()
        return redirect(movie.get_absolute_url())


class ReviewView(DetailView):
    """Просмотр отзыва и комментариев"""

    model = Review
    template_name = 'movies/review.html'
    

class AddComment(View):
    """Добавление комментария"""

    def post(self, request, pk):
        form = CommentForm(request.POST)
        review = Review.objects.get(id=pk)
        print(review)
        if form.is_valid():
            form = form.save(commit=False)
            if request.POST.get('parent', None):
                form.parent_id = int(request.POST.get('parent'))
            form.review = review
            form.save()
        return redirect('review', pk=review.id, slug=review.movie.url)
        

class ActorDetailView(GenresYears, DetailView):
    """Детальное описание актера/режиссера"""

    model = Actor
    template_name = 'movies/actor.html'
    
    def get_context_data(self, **kwargs):
        """Передает с контекстом суммарное количество фильмов с которыми работал актер/режиссер"""
        context = super().get_context_data(**kwargs)
        queryset = Actor.objects.get(pk=context['actor'].id)
        total_movies = queryset.film_actor.count() + queryset.film_director.count()
        context['total_movies'] = total_movies
        return context


class FilterMovies(GenresYears, ListView):
    """Фильтрация фильмов"""

    paginate_by = 2

    def get_queryset(self):
        if "genre" in self.request.GET:
            queryset = Movie.objects.filter(genres__in=self.request.GET.getlist('genre'))
            if "year" in self.request.GET:
                queryset = queryset.filter(year__in=self.request.GET.getlist('year'))
        else:
            queryset = Movie.objects.filter(year__in=self.request.GET.getlist('year'))
        return queryset

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(*args, **kwargs)
        context['year'] = ''.join([f'year={x}&' for x in self.request.GET.getlist('year')])
        context['genre'] = ''.join([f'genre={x}&' for x in self.request.GET.getlist('genre')])
        return context


class Search(ListView):
    """Поиск фильмов по названию"""

    paginate_by = 2

    def get_queryset(self):
        return Movie.objects.filter(title__icontains=self.request.GET.get('q'))
    
    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(*args, **kwargs)
        context['q'] = f'q={self.request.GET.get("q")}&'
        return context
