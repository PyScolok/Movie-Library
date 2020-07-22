const rating = document.querySelector('form[name=rating]');

rating.addEventListener('change', function (Event) {
    let data = new FormData(this);
    fetch(`${this.action}`, {method: 'POST', body: data})
        .then(response => alert('Рейтинг установлен'))
        .catch(error => alert('Ошибка'))
});