# restaurant/tests/test_models.py

from django.test import TestCase
from restaurant.models import MenuItem

class MenuItemTest(TestCase):
    def test_get_item(self):
        item = MenuItem.objects.create(name="IceCream", description="Vanilla Ice Cream", price_item=80, menu)  # Mis à jour ici
        self.assertEqual(str(item), "IceCream - 80.00")