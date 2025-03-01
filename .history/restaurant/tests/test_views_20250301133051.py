from django.test import TestCase
from django.urls import reverse
from restaurant.models import Menu
from restaurant.serializers import MenuSerializer
from rest_framework import status
from rest_framework.test import APIClient

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