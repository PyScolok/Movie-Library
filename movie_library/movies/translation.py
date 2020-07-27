from modeltranslation.translator import register, TranslationOptions

from .models import Category, Actor, Movie, Genre, MovieShots


<<<<<<< HEAD
# Регистрация дополнительных полей моделей подлежащих переводу 
=======
# Регистрация моделей подлежащих переводу
>>>>>>> f317d858e92a39066ec22af13d56f0dcb791a11e
@register(Category)
class CategoryTranslationOptions(TranslationOptions):
    fields = ('name', 'description')


@register(Actor)
<<<<<<< HEAD
class ActorTranslationOptions(TranslationOptions):
    fields = ('first_name', 'last_name', 'country', 'description')


@register(Genre)
class GenreTranslationOptions(TranslationOptions):
=======
class CategoryTranslationOptions(TranslationOptions):
    fields = ('first_name', 'last_name', 'description', 'country')


@register(Genre)
class CategoryTranslationOptions(TranslationOptions):
>>>>>>> f317d858e92a39066ec22af13d56f0dcb791a11e
    fields = ('name', 'description')


@register(Movie)
<<<<<<< HEAD
class MovieTranslationOptions(TranslationOptions):
=======
class CategoryTranslationOptions(TranslationOptions):
>>>>>>> f317d858e92a39066ec22af13d56f0dcb791a11e
    fields = ('title', 'tagline', 'description', 'country')


@register(MovieShots)
<<<<<<< HEAD
class MovieShotsTranslationOptions(TranslationOptions):
=======
class CategoryTranslationOptions(TranslationOptions):
>>>>>>> f317d858e92a39066ec22af13d56f0dcb791a11e
    fields = ('title', )