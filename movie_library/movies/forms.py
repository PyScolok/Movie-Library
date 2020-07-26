from django import forms
from snowpenguin.django.recaptcha3.fields import ReCaptchaField

from .models import Review, Rating, RatingStar


class ReviewForm(forms.ModelForm):
    '''Форма отзыва'''

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


class RatingForm(forms.ModelForm):
    """Форма добавления звезд рейтинга"""

    star = forms.ModelChoiceField(queryset=RatingStar.objects.all(), widget=forms.RadioSelect(), empty_label=None)
    
    class Meta:
        model = Rating
        fields = ('star',)