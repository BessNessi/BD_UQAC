# BD_UQAC
Projets de Base de données 2016 - UQAC Chcoutimi Quebec

#Partie 1

fichier : Projet_bd.zip

déziper et lire le fichier read_me ! interne


#Partie 2

fichiers : tp2_laurent_johnson.cpp + tp2_laurent_johnson.sql

le fichier . sql contient la base de données  qutilisé pour le projet
Pour que le programme fonctionne il faut utiliser phpmyadmin en local avec comme utilisateur
root sans mot de passe et avoir msql++ et mysql
Après avoir ajouté le .sql à base en local il faut entrer les commande

$ g++ BD.cpp -o test -I/usr/include/mysql++ -I/usr/include/mysql -lmysqlpp

$ ./test

pour lancer le programme
