from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter 
from restaurant.views import 

urlpatterns = [
    path('admin/', admin.site.urls),
    path('restaurant/', include('restaurant.urls')),
]
