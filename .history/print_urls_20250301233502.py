import os
import django
from django.urls import get_resolver

# Configure the settings for Django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'LittleLemon.settings')
django.setup()

def print_urls():
    url_names = [url.name for url in get_resolver().url_patterns if url.name]
    print("Registered URL names:")
    for name in url_names:
        print(name)

if __name__ == "__main__":
    print_urls()