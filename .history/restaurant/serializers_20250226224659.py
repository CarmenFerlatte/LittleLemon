from django.contrib.auth.models import User
from rest_framework.viewsets import ModelViewSet
from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from .models import MenuItem, Booking
from serializers import BookingSerializer

class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username', 'email', 'groups']

class MenuItemSerializer(ModelSerializer):
    class Meta:
        model = MenuItem
        fields = '__all__'

class BookingViewSet(ModelViewSet):
    queryset = Booking.objects.all()
    serializer_class = BookingSerializer       
