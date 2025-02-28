#define URL route for index() view
from djan
from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.index, name='index')
]