from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import De

urlpatterns = [
    path('admin/', admin.site.urls),
    path('restaurant/', include('restaurant.urls')),
]
