from django.contrib import admin

from .models import Contact


@admin.register(Contact)
class ContactAdmin(admin.ModelAdmin):
    """Подписка на рассылку по email"""

    model = Contact
    list_display = ('email', 'date')