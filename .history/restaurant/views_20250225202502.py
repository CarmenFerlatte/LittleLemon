from django.shortcuts import render
from rest_framework import APIView
from rest_framework.response import Response


class bookingwiew(APIView):
    def get(self, request):
        items = booking.objects.all()
        serializer = bookingSerializer(items, many = true)
        return Response('serializer.data') # Return JSON

# Create your views here.
def index(request):
    return render(request, 'index.html', {})


