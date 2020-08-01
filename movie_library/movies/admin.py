from django.contrib import admin
from django.utils.html import mark_safe
from modeltranslation.admin import TranslationAdmin

from .models import Movie, Category, Genre, Actor, Review, Comment, RatingStar, Rating, MovieShots


@admin.register(Category)
class CategoryAdmin(TranslationAdmin):
    """Категории"""

    list_display = ('id', 'name', 'url')
    list_display_links = ('name',)


class MovieShotsInline(admin.TabularInline):
    """Кадры на странице редактирования фильма"""

    model = MovieShots
    extra = 1
    readonly_fields = ('get_image', )

    def get_image(self, obj):
        """Возвращает миниатюру кадра"""
        return mark_safe(f'<img src={obj.image.url} width = "100" height="110"')

    get_image.short_description = 'Изображение'


class ReviewInline(admin.TabularInline):
    """Отзывы на странице редактирования фильма"""

    model = Review
    extra = 1
    readonly_fields = ('name', 'email')


@admin.register(Movie)
class MovieAdmin(TranslationAdmin):
    """Фильмы"""

    list_display = ('title', 'category', 'url', 'draft')
    list_filter = ('category', 'year')
    search_fields = ('title', 'category__name')
    inlines = (MovieShotsInline, ReviewInline)
    save_on_top = True
    readonly_fields = ('get_image', )
    fieldsets = (
        (None, {
            'fields': (('title', 'tagline'), )
        }),
        (None, {
            'fields': (('description', 'trailer_link'), )
        }),
        (None, {
            'fields': (('poster', 'get_image'), )
        }),
        (None, {
            'fields': (('year', 'country'), )
        }),
        (None, {
            'fields': (('actors', 'directors', 'genres'), )
        }),
        (None, {
            'fields': (('world_premiere', 'budget', 'fees_in_world', 'category'), )
        }),
        (None, {
            'fields': (('url', 'draft'), )
        }))

    def get_image(self, obj):
        """Возвращает миниатюру постера"""
        return mark_safe(f'<img src={obj.poster.url} width = "100" height="110"')

    get_image.short_description = 'Изображение'


@admin.register(Review)
class ReviewAdmin(admin.ModelAdmin):
    """Отзывы"""

    list_display = ('id', "name", 'email', 'movie')
    readonly_fields = ('name', 'email')


@admin.register(Genre)
class GenreAdmin(TranslationAdmin):
    """Жанры"""

    list_filter = ('name', )


@admin.register(Actor)
class ActorAdmin(TranslationAdmin):
    """Актеры и режиссеры"""

    list_display = ('__str__', 'age', 'get_image', 'country')
    search_fields = ('first_name', 'last_name', 'country')

    def get_image(self, obj):
        """Возвращает миниатюру изображения актёра/режиссера"""
        return mark_safe(f'<img src={obj.image.url} width="50" heigh="60"')

    get_image.short_description = 'Изображение'


@admin.register(MovieShots)
class MovieShotsAdmin(TranslationAdmin):
    """Кадры из фильма"""

    list_display = ("movie", "id", 'get_image')
    list_filter = ('movie', )

    def get_image(self, obj):
        """Возвращает миниатюру кадра"""
        return mark_safe(f'<img src={obj.image.url} width = "50" height="60"')

    get_image.short_description = 'Изображение'


@admin.register(Rating)
class RatingAdmin(admin.ModelAdmin):
    """Рейтинг"""

    list_display = ('star', "movie", "ip")


admin.site.register(Comment)  # комментарии
admin.site.register(RatingStar)  # звезды рейтинга

# Заголовки административной панели
admin.site.site_title = 'Movie Library'
admin.site.site_header = 'Movie Library'
