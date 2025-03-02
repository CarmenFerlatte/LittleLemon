from django.test import TestCase
from django.urls import reverse
from restaurant.models import Menu, MenuItem
from restaurant.serializers import MenuItemSerializer
from rest_framework import status
from rest_framework.test import APIClient
from django.test.utils import override_settings

@override_settings(REST_FRAMEWORK={
    'DEFAULT_AUTHENTICATION_CLASSES': [],
    'DEFAULT_PERMISSION_CLASSES': [],
})
class MenuViewTest(TestCase):
    def setUp(self):
        self.client = APIClient()
        self.menu = Menu.objects.create(title="Main Menu", inventory=100)
        self.menu_item1 = MenuItem.objects.create(name="Menu 1", description="Description 1", price_item=10.00, menu=self.menu)
        self.menu_item2 = MenuItem.objects.create(name="Menu 2", description="Description 2", price_item=20.00, menu=self.menu)

    def test_getall(self):
        response = self.client.get(reverse('menu-list-create'))
        menu_items = MenuItem.objects.all()
        serializer = MenuItemSerializer(menu_items, many=True)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.data, serializer.data)