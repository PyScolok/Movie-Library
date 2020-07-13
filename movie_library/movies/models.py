from django.db import models
from django.urls import reverse


class Category(models.Model):
    '''Категории'''
    name = models.CharField('Категория', max_length=150)
    description = models.TextField('Описание')
    url = models.SlugField(max_length=160, unique=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Категория'
        verbose_name_plural = 'Категории'


class Actor(models.Model):
    '''Актеры и режиссеры'''
    first_name = models.CharField('Имя', max_length=50)
    last_name = models.CharField('Фамилия', max_length=50)
    age = models.PositiveSmallIntegerField('Возраст', null=True, blank=True)
    description = models.TextField('Описание')
    image = models.ImageField('Изображение', upload_to='actors/')

    def __str__(self):
        return f'{self.first_name}  {self.last_name}'

    class Meta:
        verbose_name = 'Актеры и режиссеры'
        verbose_name_plural = 'Актеры и режиссеры'


class Genre(models.Model):
    '''Жанры'''
    name = models.CharField('Жанр', max_length=25)
    description = models.TextField('Описание')
    url = models.SlugField(max_length=160, unique=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Жанр'
        verbose_name_plural = 'Жанры'


class Movie(models.Model):
    '''Фильмы'''
    title = models.CharField('Название', max_length=100)
    tagline = models.CharField('Слоган', max_length=100, default='')
    description = models.TextField('Описание')
    poster = models.ImageField('Постер', upload_to='movies/')
    trailer_link = models.URLField('Трейлер', null=True)
    year = models.PositiveSmallIntegerField(
        'Год выхода', null=True, blank=True)
    country = models.CharField('Страна', max_length=50)
    directors = models.ManyToManyField(
        Actor, verbose_name='Режиссер', related_name='film_director')
    actors = models.ManyToManyField(
        Actor, verbose_name='Актеры', related_name='film_actor')
    genres = models.ManyToManyField(Genre, verbose_name='Жанры')
    world_premiere = models.DateField(
        'Мировая премьера', null=True, blank=True)
    budget = models.PositiveIntegerField(
        'Бюджет', null=True, blank=True, help_text='Сумма в долларах')
    fees_in_world = models.PositiveIntegerField(
        'Сборы в мире', null=True, blank=True, help_text='Сумма в долларах')
    category = models.ForeignKey(
        Category, on_delete=models.SET_NULL, verbose_name='Категория', null=True)
    url = models.SlugField(max_length=160, unique=True)
    draft = models.BooleanField('Черновик', default=False)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('movie_detail', kwargs={'slug': self.url})

    class Meta:
        verbose_name = 'Фильм'
        verbose_name_plural = 'Фильмы'


class MovieShots(models.Model):
    '''Кадры из фильма'''
    title = models.CharField('Заголовок', max_length=50)
    image = models.ImageField('Изображение', upload_to='movie_shots/')
    movie = models.ForeignKey(
        Movie, on_delete=models.CASCADE, verbose_name='Фильм')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Кадр из фильма'
        verbose_name_plural = 'Кадры из фильма'


class Rating(models.Model):
    '''Рейтинг'''
    ip = models.CharField('IP-адрес', max_length=15)
    star = models.ForeignKey(
        'RatingStar', on_delete=models.CASCADE, verbose_name='Звезда')
    movie = models.ForeignKey(
        Movie, on_delete=models.CASCADE, verbose_name='Фильм')

    def __str__(self):
        return f'{self.star} - {self.movie}'

    class Meta:
        verbose_name = 'Рейтинг'
        verbose_name_plural = 'Рейтинги'


class RatingStar(models.Model):
    '''Звезды рейтинга'''
    value = models.SmallIntegerField('Значение', default=0)

    def __str__(self):
        return (self.value)

    class Meta:
        verbose_name = 'Звезда рейтинга'
        verbose_name_plural = 'Звезды рейтинга'


class Review(models.Model):
    '''Отзывы'''
    email = models.EmailField()
    name = models.CharField('Имя', max_length=50)
    title = models.CharField('Заголовок', max_length=100)
    text = models.TextField('Текст отзыва')
    movie = models.ForeignKey(
        Movie, on_delete=models.CASCADE, verbose_name='Фильм')

    def __str__(self):
        return f'{self.name} - {self.movie}'

    class Meta:
        verbose_name = 'Отзыв'
        verbose_name_plural = 'Отзывы'


class Comment(models.Model):
    '''Комментарии'''
    email = models.EmailField()
    name = models.CharField('Имя', max_length=50)
    comment = models.TextField('Комментарий')
    parent = models.ForeignKey(
        Review, on_delete=models.CASCADE, verbose_name='Комментируемый отзыв')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Комментарий'
        verbose_name_plural = 'Комментарии'
