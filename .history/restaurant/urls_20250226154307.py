# FILE: urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    # path('admin/', views.admin, name='admin'),
    path('restaurant/', views.index, name='restaurant'),
    # path('bookings/', views.BookingView.as_view({'get': 'list'}), name='bookings'),
]