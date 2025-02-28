from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path()
    path('bookings/', views.BookingView.as_view(), name='bookings'),
]