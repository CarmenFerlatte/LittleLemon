from django.test import TestCase, override_settings
from django.urls import reverse
from restaurant.models import MenuItem
from restaurant.serializers import MenuItemSerializer
from rest_framework import status
from rest_framework.test import APIClient

@override_settings(REST_FRAMEWORK={'DEFAULT_PERMISSION_CLASSES': []})
class MenuViewTest(TestCase):
    def setUp(self):
        self.client = APIClient()
        self.menu1 = MenuItem.objects.create(name="Menu 1", description="Description 1", price=10.00, inventory=100)
        self.menu2 = MenuItem.objects.create(name="Menu 2", description="Description 2", price=20.00, inventory=200)

    def test_getall(self):
        response = self.client.get(reverse('menu-list'))
        menus = MenuItem.objects.all()
        serializer = MenuItemSerializer(menus, many=True)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.data, serializer.data)