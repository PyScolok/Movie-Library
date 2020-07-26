from django import template

from movies.models import Category, Movie, Actor


register = template.Library()

@register.simple_tag()
def get_category():
    """Возвращает все объекты модели Category"""
    return Category.objects.all()


@register.inclusion_tag('movies/tags/last_movie.html')
def get_last_movies():
    """Возвращает 5 последних объектов модели Movie"""
    movies = Movie.objects.order_by('id')[:5]
    return {'last_movies': movies}
