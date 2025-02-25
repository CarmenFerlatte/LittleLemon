from django.db import models

# Create your models here.

class Booking(models.Model):
    name = models.CharField(max_length=255)
    no_of_guests = models.IntegerField()
    BookingDate = models.DateField()

    def __str__(self):
        return self.name + ' ' + self.last_name
    
    class Menu(models.Model):
        title = models.CharField(max_length=255)
        price = models.DecimalField(max_digits=6, decimal_places=2)
        inventory = models

        def __str__(self):
            return self.name