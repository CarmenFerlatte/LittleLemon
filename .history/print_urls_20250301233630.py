import os
import django
from django.urls import get_resolver, URLPattern, URLResolver

# Configure the settings for Django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'LittleLemon.settings')
django.setup()

def list_urls(lis, acc=None):
    if acc is None:
        acc = []
    for entry in lis:
        if isinstance(entry, URLPattern):
            acc.append(entry.name)
        elif isinstance(entry, URLResolver):
            list_urls(entry.url_patterns, acc)
    return acc

def print_urls():
    url_names = list_urls(get_resolver().url_patterns)
    print("Registered URL names:")
    for name in url_names:
        print(name)

if __name__ == "__main__":
    print_urls()