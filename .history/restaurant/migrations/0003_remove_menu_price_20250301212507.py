# Generated by Django 5.1.6 on 2025-03-02 02:25

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('restaurant', '0002_menuitem'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='menu',
            name='price',
        ),
    ]
