#define URL route for index() view
from django.urls import path
from rest_framework import routers
from . import views
from rest_framework.authtoken.views import obtain_auth_token

urlpatterns = [
    path('', views.index, name='index'),
    path('menu/', views.MenuListCreateView.as_view(), name='menu-list-create'),
    path('menu/<int:pk>', views.SingleMenuItemView.as_view()),
    path('menu/menuitem/', views.MenuItemListCreateView.as_view(), name='menuitem-list-create'),
    path('message/', views.msg),
    path('api-token-auth/', obtain_auth_token),
]