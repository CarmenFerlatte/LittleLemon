from rest_framework import serializers

class MenuSerializer (ModelSerializer):
    class Meta:
        model = Menu
        fields = '__all__'