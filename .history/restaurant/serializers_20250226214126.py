from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from

class MenuSerializer(ModelSerializer):
    class Meta:
        model = Menu
        fields = '__all__'
