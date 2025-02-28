from django.shortcuts import render
from rest_framework.generics import ListCreateView, RetrieveUpdateAPIView, DestroyAPIView
from .models import MenuItem
from .serializers import MenuSerializer

# Create your views here.
def index(request):
    return render(request, 'index.html', {})


