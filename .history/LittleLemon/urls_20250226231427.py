"""
URL configuration for LittleLemon project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from restaurant.views import BookingViewSet

router = DefaultRouter()
Page not found (404)
Request Method:	GET
Request URL:	http://127.0.0.1:8000/restaurant/booking/tables
Using the URLconf defined in LittleLemon.urls, Django tried these URL patterns, in this order:

admin/
restaurant/menu/
restaurant/booking ^tables/$ [name='booking-list']
restaurant/booking ^tables\.(?P<format>[a-z0-9]+)/?$ [name='booking-list']
restaurant/booking ^tables/(?P<pk>[^/.]+)/$ [name='booking-detail']
restaurant/booking ^tables/(?P<pk>[^/.]+)\.(?P<format>[a-z0-9]+)/?$ [name='booking-detail']
restaurant/booking [name='api-root']
restaurant/booking <drf_format_suffix:format> [name='api-root']
The current path, restaurant/booking/tables, didn’t match any of these.

You’re seeing this error because you have DEBUG = True in your Django settings file. Change that to False, and Django will display a standard 404 page

urlpatterns = [
    path('admin/', admin.site.urls),
    path('restaurant/menu/', include('restaurant.urls')),
    path('restaurant/booking', include(router.urls)),  # Inclure les URLs générées par le routeur
]
