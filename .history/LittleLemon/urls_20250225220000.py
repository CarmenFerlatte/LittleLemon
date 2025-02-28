from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from restaurant.views import UserViewSet, BookingView

router = DefaultRouter()
router.register(r'users', UserViewSet)
router.register(r'bookings', BookingView, basename='booking')

urlpatterns = [
    path('', include(router.urls)),
    path('admin/', admin.site.urls),
    path('api-auth/', include(rest_frameworkrouter.urls)),
    path('restaurant/', include('restaurant.urls')),
]