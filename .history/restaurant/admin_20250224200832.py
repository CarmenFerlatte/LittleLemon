from django.contrib import admin
from .models import Menu, Booking

# Register your models here.
# Étape 1 : Déclarer les modèles Menu et Réservation
# Référez-vous au schéma des tables Menu et Booking qui vous a été fourni. Déclarez les classes de modèles menu et booking avec les attributs correspondants.
# Vous devez enregistrer le code de ces classes dans le fichier models.py dans le dossier du paquetage de l'application restaurant.# Étape 2 : effectuer les migrations

# Tout d'abord, exécutez la commande makemigrations du script manage.py.
# Exécutez ensuite la commande python manage.py migrate.
# Les tables correspondantes seront créées dans la base de données.
# Confirmez que les tables sont créées en utilisant l'extension MySQL que vous avez installée précédemment dans VS Code.

# Etape 3 : Enregistrer les modèles dans le module admin
# Ouvrez le fichier admin.py et enregistrez les modèles Menu et Booking avec le site d'administration en utilisant la méthode admin.site.register().

admin.site.register(Menu)
admin.site.register(Booking)
# Compare this snippet from restaurant/models.py: