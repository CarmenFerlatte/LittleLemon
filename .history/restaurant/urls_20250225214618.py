from django.con
from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('restaurant/', views.index, name='restaurant'),
    path('bookings/', views.BookingView.as_view(), name='bookings'),
]