from django.shortcuts import render, redirect
from django.views.generic import ListView, DetailView
from django.views.generic.base import View
from django.utils import timezone


from .forms import ReviewForm
from .models import Movie, Actor


class MoviesView(ListView):
    '''Ввод фильмов'''

    model = Movie
    queryset = Movie.objects.filter(draft=False)


class MovieDetailView(DetailView):
    '''Детальное описание фильма'''

    model = Movie
    slug_field = 'url'


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


class ActorDetailView(DetailView):
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