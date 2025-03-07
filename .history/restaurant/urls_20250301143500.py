#define URL route for index() view
from django.urls import path
from rest_framework import routers
from . import views
from rest_framework.authtoken.views import obtain_auth_token

urlpatterns = [
    path('', views.index, name='index'),
    path('menu/', views.MenuItemView.as_view(), name='menu-list'),
    path('menu/<int:pk>', views.SingleMenuItemView.as_view(), name),
    path('message/', views.msg),
    path('api-token-auth/', obtain_auth_token),
]