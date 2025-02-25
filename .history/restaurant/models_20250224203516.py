from django.db import models

# Create your models here.

class Booking(models.Model):
    name = models.CharField(max_length=255)
    guest_number = models.IntegerField()
    comment = models.TextField(max_length=1000)

    def __str__(self):
        return self.name + ' ' + self.last_name
    
    class Menu(models.Model):
        name = models.CharField(max_length=255)
        price = models.DecimalField(max_digits=6, decimal_places=2)
        description = models.TextField(max_length=1000, default='')

        def __str__(self):
            return self.name