from django.shortcuts import render
from rest_framework import APIView
from rest_framework.response import Response


class bokkingwiew(APIView):

# Create your views here.
def index(request):
    return render(request, 'index.html', {})


