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
from django.conf import settings



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