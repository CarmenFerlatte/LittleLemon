from django import TestCase

class MenuViewTest(TestCase):
    def test_get_menu(self):
        response = self.client.get('/restaurant/menu/')
        self.assertEqual(response.status_code, 200)