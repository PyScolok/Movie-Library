from django.db import models

class Contact(models.Model):
    """Подписка на рассылку по Email"""

    email = models.EmailField('Email')
    date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.email
