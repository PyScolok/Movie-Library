from django.urls import path
from . import views

# Маршрутизатор приложения movies
urlpatterns = [
    path('', views.MoviesView.as_view(), name='main'),
    path('filter/', views.FilterMovies.as_view(), name='filter'),
    path('search/', views.Search.as_view(), name='search'),
    path('<slug:slug>/', views.MovieDetailView.as_view(), name='movie_detail'),
    path('<slug:slug>/review/<int:pk>/', views.ReviewView.as_view(), name='review'),
    path('review/<int:pk>/', views.AddReview.as_view(), name='add_review'),
    path('comment/<int:pk>/', views.AddComment.as_view(), name='add_comment'),
    path('actor/<int:pk>/', views.ActorDetailView.as_view(), name='actor_detail')
]
