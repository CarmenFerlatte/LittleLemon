from django.shortcuts import render
from rest_f

# Create your views here.
def index(request):
    return render(request, 'index.html', {})


