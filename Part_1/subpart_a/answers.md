Question 1 :
    a) docker build -t img_la .

    b) docker run -v D:\LiveCampus\Projet\docker-1-project\Part_1\subpart_a\src:/src -v D:\LiveCampus\Projet\docker-1-project\Part_1\subpart_a\dst:/dst busybox cp -r /src/. /dst

    c) Copie faite correctement.

Question 2 :

    J'ai retiré la ligne "time.sleep(10000)". Cette ligne permet de mettre le script en pause lors de son exécution, le temps de mis en pause est représenter entre las parenthèses, ici c'est 10 000 secondes.

Question 3 :

    a)  container_src : docker run -e SRC="/src" -e DST="/dst" -v D:/LiveCampus/Projet/docker-1/project/Part_1/subpart_a:/src --name container_src img_la
        (Avec déinition de la variable src et dst car cela me retournait une l'erreur "traceback" et ne retrouvait pas SRC et DST, j'ai donc dû créer cette variable)
        container_dst : docker run --rm -e SRC="/src" -e DST="/dst" --volumes-from container_dst -v D:/LiveCampus/Projet/docker-1-project/Part_1/subpart_a/dst:/dst img_la python script_a.py

    b) Commandes utilisées :

        Création du volume :
        -docker volume create subparta
        Copier les fichiers dans le named volume à partir du dossier "subpart_a/dst" :
        -docker run --rm -v D:/LiveCampus/Projet/docker-1-project/Part_1/subpart_a/dst:/src -v subparta:/dst busybox cp -r /src/. /dst
        Exécuter le script dans un autre conteneur et copier les fichiers depuis le named volume vers un autre dossier du conteneur :
        -docker run --rm -v subparta:/src --name container_dst img_2a cp -r /src/. /dst