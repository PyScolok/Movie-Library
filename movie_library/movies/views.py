from django.shortcuts import render, redirect
from django.views.generic import ListView, DetailView
from django.views.generic.base import View


from .forms import ReviewForm
from .models import Movie


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
