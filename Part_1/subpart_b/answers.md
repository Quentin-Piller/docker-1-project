Question 1 Donner les commandes qui permettent de bâtir l’image (que vous appellerez img_1b ) sur la base du Dockerfile et de créer un conteneur pour exécuter l’image :

    - docker build -t img_1b .
    - docker run --rm img_1b

Question 2 Après exécution du conteneur, observez l’output dans la console et le Dockerfile. Pourquoi VAR_1 et VAR_2 ont-elles ces valeurs ? Supprimer pour VAR_1 l’instruction inutile et corriger pour VAR_2 pour que VAR_2 ait une valeur :

    - Les valeurs onbtenues sont : 2023-08-04 15:53:23 FOO is Some variable for 1, BAR is / 2023-08-04 15:57:17 FOO is Some variable for 1, BAR is
    Explication : 
        VAR_1 est définie deux fois mais pas avec la même valeur. L'effet du premier ENV VAR_1="Some variable for 1" est annulé par le deuxième RUN export VAR_1="Some variable for 1, but different". C'est pourquoi VAR_1 aura la valeur "Some variable for 1, but different".
        VAR_2 est définie avec la valeur "Some variable for 2". Cette déclaration est correcte, et VAR_2 aura cette valeur dans le conteneur.

Question 3 Ré-écrire un nouveau Dockerfile appelé Dockerfile-corrected et les commandes pour créer une nouvelle image img_1bcorrected et l’exécuter dans un conteneur, en utilisant des variables environnementales lors de l’étape run plutôt que d’inscrire ces valeurs dans le Dockerfile. Donner les commandes utilisées. :

    - Commande pour img_1bcorrected : docker build -t img_1bcorrected -f Dockerfile-corrected .
    - Commande pour exécuter le conteneur avec les variables d'environnement : docker run --rm -e VAR_1="Updated variable for 1" -e VAR_2="Updated variable for 2" img_1bcorrected

Question 4 Faire de même en créant un fichier docker-compose.yaml et un fichier .env qui contient les variables environnementales. Donner les commandes utilisées. :

    - Une fois le fichier docker-compose.yaml et .env créer, la commande que j'ai utilisé est docker-compose up afin d'exécuter le conteneur à l'aide de docker-compose et les variables d'environnement situé dans .env.