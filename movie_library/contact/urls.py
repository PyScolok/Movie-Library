from django.urls import path

from .views import ContactView

# Маршрутизатор приложения contact
urlpatterns = [
    path('', ContactView.as_view(), name='contact'),
]