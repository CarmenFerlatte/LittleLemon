from rest_framework import serializers
from .models import Menu

class menuSerializer(serializers.ModelSerializer):
    class Meta:
        model = Menu
        fields = '__all__'

        