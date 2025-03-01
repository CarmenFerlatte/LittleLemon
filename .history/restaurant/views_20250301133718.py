from django.shortcuts import render
from rest_framework.generics import ListCreateAPIView, RetrieveUpdateAPIView, DestroyAPIView
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from rest_framework import viewsets, permissions
from rest_framework.decorators import api_view, permission_classes
from rest_framework import generics
from rest_framework.permissions import IsAuthenticated
from django.contrib.auth.models import User
from .models import MenuItem, Booking
from .serializers import MenuItemSerializer, BookingSerializer, UserSerializer

from django.test import TestCase, override_settings
from django.urls import reverse
from restaurant.models import Menu
from restaurant.serializers import MenuSerializer
from rest_framework import status
from rest_framework.test import APIClient

@override_settings(REST_FRAMEWORK={'DEFAULT_PERMISSION_CLASSES': []})
class MenuViewTest(TestCase):
    def setUp(self):
        self.client = APIClient()
        self.menu1 = Menu.objects.create(title="Menu 1", price=10.00, inventory=100)
        self.menu2 = Menu.objects.create(title="Menu 2", price=20.00, inventory=200)

    def test_getall(self):
        response = self.client.get(reverse('menu-list'))
        menus = Menu.objects.all()
        serializer = MenuSerializer(menus, many=True)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.data, serializer.data)

# Create your views here.
def index(request):
    return render(request, 'index.html', {})

class MenuItemView(ListCreateAPIView):
    permission_classes = [IsAuthenticated]
    queryset = MenuItem.objects.all()
    serializer_class = MenuItemSerializer

class SingleMenuItemView(RetrieveUpdateAPIView, DestroyAPIView):
    queryset = MenuItem.objects.all()
    serializer_class = MenuItemSerializer

class BookingViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Booking.objects.all()
    serializer_class = BookingSerializer

class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]    

@api_view()  
@permission_classes([IsAuthenticated])
#@authentification_classes([TokenAuthentication])
def msg(request):
    return Response({"message": "Cette vue est protégée par un token d'authentification."}) 