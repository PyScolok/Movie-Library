from modeltranslation.translator import register, TranslationOptions

from .models import Category, Actor, Movie, Genre, MovieShots


# Регистрация моделей подлежащих переводу
@register(Category)
class CategoryTranslationOptions(TranslationOptions):
    fields = ('name', 'description')


@register(Actor)
class CategoryTranslationOptions(TranslationOptions):
    fields = ('first_name', 'last_name', 'description', 'country')


@register(Genre)
class CategoryTranslationOptions(TranslationOptions):
    fields = ('name', 'description')


@register(Movie)
class CategoryTranslationOptions(TranslationOptions):
    fields = ('title', 'tagline', 'description', 'country')


@register(MovieShots)
class CategoryTranslationOptions(TranslationOptions):
    fields = ('title', )