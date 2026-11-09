1 - Pour l'ordre des instructions, je copie d'abord le requirement parce qu'il ne change pas souvent avant les installations. Juste après je copie les fichiers qui, eux peuvent souvent changer suite à des manipulations. Ceci est fait pour utiliser la puissance du cache de docker

2 - Sortie de mon `docker images kraken-bootstrap`
```bash
IMAGE                     ID             DISK USAGE CONTENT SIZE   EXTRA
kraken-bootstrap:latest   30fd4f9ed996        602MB          139MB        
kraken-bootstrap:naif     c053afe9f670       2.53GB          623MB 
```
Le dockerignore contient tous les fichiers inutiles pour l'image, y copris le dossier docs dans laquelle se trouve ce document     

3 - J'utilise un user 1000 pour pas être root dans le conteneur
