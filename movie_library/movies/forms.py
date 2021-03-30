from django import forms
from snowpenguin.django.recaptcha3.fields import ReCaptchaField

from .models import Review, Comment


class ReviewForm(forms.ModelForm):
    """Форма отзыва"""

    captcha = ReCaptchaField()

    class Meta:
        model = Review
        fields = ('name', 'email', 'text', 'title')
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control border'}),
            'email': forms.EmailInput(attrs={'class': 'form-control border'}),
            'text': forms.Textarea(attrs={'class': 'form-control border'}),
            'title': forms.TextInput(attrs={'class': 'form-control border'}),
            
        }


class CommentForm(forms.ModelForm):
    """Форма добавления комментария к отзыву"""

    class Meta:
        model = Comment
        fields = ('text', 'author', 'email')