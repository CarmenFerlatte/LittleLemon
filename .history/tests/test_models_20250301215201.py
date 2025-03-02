# restaurant/tests/test_models.py

from django.test import TestCase
from restaurant.models import MenuItem, Menu

class MenuItemTest(TestCase):
    def test_get_item(self):
        # menu = Menu.objects.create(title="Desserts", price=100, inventory=50)
        item = MenuItem.objects.create(name="IceCream", description="Vanilla Ice Cream", price=80)
        self.assertEqual(str(item), "IceCream - 80.00")