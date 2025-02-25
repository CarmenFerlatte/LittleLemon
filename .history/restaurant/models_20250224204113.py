from django.db import models

# Create your models here.


class Booking(models.Model):
    name = models.CharField(max_length=255)
    no_of_guests = models.IntegerField()
    BookingDate = models.DateField()

    def __str__(self):
        return self.name