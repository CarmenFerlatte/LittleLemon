from django.contrib.auth.models import User
from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from .models import Menu

class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username', 'email']

class MenuSerializer(ModelSerializer):
    class Meta:
        model = Menu
        fields = '__all__'
