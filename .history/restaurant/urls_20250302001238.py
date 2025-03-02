from django.urls import path
from rest_framework.authtoken.views import obtain_auth_token
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('menu/', views.MenuListCreateView.as_view(), name='menu-list-create'),
    path('menu/<int:pk>', views.SingleMenuView.as_view(), name='single-menu'),
    path('menu/menuitem/', views.MenuItemView.as_view(), name='menuitem-list-create'),
    path('menu/menuitem/<int:pk>', views.SingleMenuItemView.as_view(), name='single-menuitem'),
    path('booking/', views.BookingListCreateView.as_view(), name='booking-list-create'),
    path('booking/<int:pk>', views.SingleBookingView.as_view(), name='single-booking'),
    path('message/', views.msg),
    path('api-token-auth/', obtain_auth_token),
]