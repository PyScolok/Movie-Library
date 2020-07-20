from django import forms
from .models import Review, Rating, RatingStar


class ReviewForm(forms.ModelForm):
    '''Форма отзыва'''

    class Meta:
        model = Review
        fields = ('name', 'email', 'text', 'title')


class RatingForm(forms.ModelForm):
    """Форма добавления звезд рейтинга"""

    star = forms.ModelChoiceField(queryset=RatingStar.objects.all(), widget=forms.RadioSelect(), empty_label=None)

    class Meta:
        model = Rating
        fields = ('star',)