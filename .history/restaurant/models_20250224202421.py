from django.db import models

# Create your models here.

class Booking(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    

# Étape 4 : Ajouter des données dans les modèles

# Connectez-vous au panneau d'administration avec le super-utilisateur créé précédemment.
# Ajoutez des données dans les modèles Menu et Booking en utilisant l'interface d'administration.

# Etape 5 : Vérifier les données dans VS Code
# Rafraîchissez le navigateur MySQL dans VS Code pour afficher les données ajoutées via l'interface d'administration.