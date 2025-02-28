from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Booking
from .serializers import bookingSerializer

class BookingView(APIView):
    def get(self, request):
        items = booking.objects.all()
        serializer = bookingSerializer(items, many=True)
        return Response(serializer.data)  # Return JSON

    def post(self, request):
        serializer = bookingSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({"status": "success", "data": serializer.data})
        return Response({"status": "error", "data": serializer.errors})