from django.test import TestCase


class MenuItemTEst(TestCase):
    def test_get_item(self):
        item = MenuItem.objects.create(title="IceCream")