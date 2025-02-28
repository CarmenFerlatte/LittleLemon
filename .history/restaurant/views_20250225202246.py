from django.shortcuts import render
from rest_framework import APIView

# Create your views here.
def index(request):
    return render(request, 'index.html', {})


