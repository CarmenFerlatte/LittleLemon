from django.contrib import admin
from .models import Menu, Booking

admin.site.register(Menu)
admin.site.register(Booking)
# Compare this snippet from restaurant/models.py: