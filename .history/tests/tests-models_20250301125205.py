from django.test import TestCase
from LittleLemon.restaurant.models import MenuItem


class MenuItemTEst(TestCase):
    def test_get_item(self):
        item = MenuItem.objects.create(title="IceCream", price=80, inventory=100)
        self.assertEqual(item, "IceCream : 80")