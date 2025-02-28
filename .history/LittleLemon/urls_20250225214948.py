from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter 
from restaurant.views import UserViewSet, BookingView

router = DefaultRouter()
router.register(r'users', UserViewSet)
router.register(r'bookings', BookingView, basename='booking')

urlpatterns = [
    path('admin/', admin.site.urls),
    
    path('restaurant/', include('restaurant.urls')),
]
