# README

Lancer le programme : `ruby app.rb`

## 0. Introduction
L'utilisateur pourra :
- rentrer les ragots et rumeurs
- afficher une liste des potins
- puis supprimer

## 1. Routeur
- demander ce que l'utilisateur veut faire
- de lancer la méthode `Router.new.perform`, dans la bonne classe `Routeur`
- redirection vers une méthode du controller

3 choix :
- 1. *créer* un gossip
- 2. *voir* la liste des gossips
- 3. *supprimer* un gossip

## 2. Controller
Relai entre la "view" et "model"
3 méthodes :
- 1. gère la *création* d'un potin
- 2. gère l'*affichage* de la liste des potins
- 3. permet de *détruire* un potin
Méthode de *renvoi* vers la "view"

## 3. View
Afficher les bonnes informations à l'utilisateur

La méthode create_gossip doit :
- demander les 2 variables (auteur et contenu)
- retourner les 2 variables

## 4. Model et la base de données
La classe `Gossip` possède 2 attributs :
- `content` (string)
- `author` (string)

Elle ira piocher dans le fichier *json* et permettre de créer plein d'instances.