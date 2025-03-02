from django.db import models

# Create your models here.

class Menu(models.Model):
    title = models.CharField(max_length=255)
    inventory = models.IntegerField()

    def __str__(self):
        return f"{self.title}"

class MenuItem(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    price_item = models.DecimalField(max_digits=6, decimal_places=2) 
    menu = models.ForeignKey(Menu, related_name='items', on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.name} - {self.price_item:.2f}"

class Booking(models.Model):
    name = models.CharField(max_length=255)
    no_of_guests = models.IntegerField()
    BookingDate = models.DateField()

    def __str__(self):
        return self.name