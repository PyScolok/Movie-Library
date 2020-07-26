from django.shortcuts import render, redirect
from django.views.generic import ListView, DetailView
from django.views.generic.base import View
from django.db.models import Q
from django.http import JsonResponse, HttpResponse


from .forms import ReviewForm, RatingForm
from .models import Movie, Actor, Genre, Rating


class GenresYears:
    """Жанры и годы выхода фильмов"""

    def get_genres(self):
        """Получение всех жанров фильма"""
        return Genre.objects.all()
    
    def get_years(self):
        """Получение года выхода всех фильмов"""
        return Movie.objects.filter(draft=False).values('year')


class MoviesView(GenresYears, ListView):
    '''Вывод фильмов'''

    model = Movie
    queryset = Movie.objects.filter(draft=False)
    paginate_by = 2


class MovieDetailView(GenresYears, DetailView):
    '''Детальное описание фильма'''

    model = Movie
    slug_field = 'url'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['star_form'] = RatingForm()
        context['form'] = ReviewForm()
        return context


class AddReview(View):
    '''Добавление отзыва'''

    def post(self, request, pk):
        form = ReviewForm(request.POST)
        movie = Movie.objects.get(id=pk)
        if form.is_valid():
            form = form.save(commit=False)
            form.movie = movie
            form.save()
        return redirect(movie.get_absolute_url())


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
        queryset = Movie.objects.filter(
            Q(year__in=self.request.GET.getlist('year')) |
            Q(genres__in=self.request.GET.getlist('genre'))
        ).distinct()
        return queryset

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(*args, **kwargs)
        context['year'] = ''.join([f'year={x}&' for x in self.request.GET.getlist('year')])
        context['genre'] = ''.join([f'genre={x}&' for x in self.request.GET.getlist('genre')])
        return context

class AddStarRating(View):
    """Добавление рейтинга"""

    def get_client_ip(self, request):
        x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if  x_forwarded_for:
            ip = x_forwarded_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')
        return ip

    def post(self, request):
        form = RatingForm(request.POST)
        if form.is_valid():
            Rating.objects.update_or_create(
            ip=self.get_client_ip(request),
            movie_id=int(request.POST.get('movie')),
            defaults={'star_id': int(request.POST.get('star'))}
            )
            return HttpResponse(staus=201)
        else:
            return HttpResponse(status=400)


class Search(ListView):
    """Поиск фильмов по названию"""

    paginate_by = 3

    def get_queryset(self):
        return Movie.objects.filter(title__icontains=self.request.GET.get('q'))
    
    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(*args, **kwargs)
        context['q'] =  f'q={self.request.GET.get("q")}&' 
        return context