# Prolog Dockerized Project

Ce projet configure un environnement Dockerisé pour exécuter du code Prolog avec un script spécifique (`like.pl`). Il inclut un fichier `Makefile` pour simplifier les commandes d'exécution.

---

## 🛠️ Configuration du projet

### Structure du projet
```
project/
├── scripts/
│   ├── like.pl            # Fichier contenant les faits et règles Prolog
│   └── family.pl          # Autre fichier Prolog (exemple)
├── Dockerfile             # Image Docker basée sur SWI-Prolog
├── docker-compose.yml     # Configuration Docker Compose
├── Makefile               # Script pour simplifier les commandes
├── README.md              # Documentation du projet
```

### Prérequis
- **Docker** : [Télécharger Docker](https://www.docker.com/)
- **Docker Compose** : Inclus avec Docker Desktop.
- **Make** : Optionnel, mais recommandé pour exécuter les commandes via le Makefile.

---

## 🚀 Instructions d'installation

1. Clonez le dépôt du projet :
   ```bash
   git clone https://github.com/votre-repo/prolog-docker.git
   cd prolog-docker
   ```

2. Assurez-vous que le fichier Prolog (`like.pl`) est présent dans le dossier `scripts`.

3. Construisez et démarrez le conteneur avec Docker Compose :
   ```bash
   make start
   ```

4. Pour exécuter une session interactive Prolog :
   ```bash
   make exec
   ```

---

## 📋 Commandes Makefile

- **`make start`**  
  Lance le projet et exécute automatiquement le script Prolog `like.pl`.

- **`make exec`**  
  Ouvre une session interactive Prolog dans le conteneur.

- **`make help`**  
  Affiche les informations sur les commandes disponibles.

---

## 🧠 Utilisation de Prolog

### Charger un fichier dans Prolog

Une fois dans la session interactive (`make exec`), vous pouvez charger un fichier Prolog avec :
```prolog
?- ['scripts/like.pl'].
```

### Exemple de requêtes
Pour interroger les faits et règles définis dans `like.pl` :
```prolog
?- likes(john, mary).
true.

?- likes(mary, X).
X = chocolate.
```

---

## 🔄 Passer d'un fichier Prolog à un autre

Pour travailler avec un autre fichier Prolog (par exemple `family.pl`), chargez-le en utilisant cette commande dans la session interactive :
```prolog
?- ['scripts/family.pl'].
```

Cela remplacera le contexte actuel par celui du fichier chargé. Si vous voulez recharger le fichier après des modifications, utilisez :
```prolog
?- [family].
```

---

## 🛠️ Développement et Debugging

### Ajouter de nouveaux fichiers
Ajoutez vos fichiers Prolog dans le dossier `scripts/`, puis modifiez le `Makefile` si nécessaire pour exécuter un fichier spécifique.

### Logs Docker
Pour afficher les journaux du conteneur :
```bash
docker logs prolog
```

---

Generate by openAI