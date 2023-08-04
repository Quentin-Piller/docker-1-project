Question 1 Expliquer précisément ce que fait le script script.py (bloc par bloc) :

    - De la ligne 1 à 7, importation des modules nécessaire au bon fonctionnement du script.

    - De la ligne 10 à 13, Définition d'un dictionnaire urls avec des liens vers les pages Wikipédia de deux langages de programmation.

    - De la ligne 16 à 20, Définition d'une fonction get_table(url) qui récupère le contenu HTML de la page Wikipédia passée en argument et extrait un tableau de données à partir de celui-ci. La fonction renvoie le tableau sous forme de dataframe pandas.

    - De la ligne 23 à 33, Exécution du code principal dans la partie if __name__ == "__main__":
        Boucle for qui parcourt à travers les éléments (clé, valeur) du dictionnaire urls :
         -Crée un répertoire portant le nom du langage s'il n'existe pas déjà.
         -Récupère le tableau de données de la page Wikipédia associée au langage.
         -Sauvegarde le tableau dans un fichier CSV nommé "wikipedia_table.csv" dans le répertoire du langage.
         -Ajoute un message contenant la date, le langage et l'action "data scraped" dans le fichier "logs.txt".

    - De la ligne 35 à 37, il manque l'URL utile à la requête POST du fichier log.txt et il y a une ligne de commentaire pour la question 4.

    - De la ligne 39 à 47 (FIN), ouvre le fichier "logs.txt" en mode lecture seule, puis envoie son contenu sous forme de JSON dans une requête POST à l'URL spécifiée. La réponse de la requête est ensuite affichée.

Question 2 Après avoir analysé le contenu du dossier, donner les commandes pour bâtir l’image et exécuter un conteneur sur la base de cette image, en respectant les contraintes suivantes :

    a L’image doit s’appeler img_1c )  docker build -t img_1c .

    b Le conteneur doit se supprimer automatiquement après exécution ) Voici la commande utilisé pour ceci : docker run --rm -v "$(pwd)/python:/usr/src/app/python" img_1c
    docker run --rm -v "$(pwd)/javascript:/usr/src/app/javascript" img_1c

    Sachant que dans le Dockerfile, j'ai ajouté la ligne "RUN sed -n '/############################# question 4/,$!p' script.py > script_no_q4.py" afin qu'il ne prenne pas en compte tout ce qui se situe en-dessous de "############################# question 4", afin de ne pas avoir d'erreur concernant l'URL lors de l'exécution de la commande précédente.

    Cette commande va donc créer un volume et exécuter le conteneur et le supprimer automatiquement après l'exécution.
    Pour ce qui est de "python" et "javascipt", cela va les créer (si ils n'existent pas déjà) et les monter dans le conteneur. (Ils seront supprimé aussi lors de la suppression du conteneur, c'était pour le test de la commande).

    
