from rest_framework import serializers
from rest_framework.serializers import ModelSerializer

class MenuSerializer(ModelSerializer):
    class Meta:
        model = MenuItem
        fields = '__all__'