# PROLOG

## Instalation

```bash 
docker-compose up --build
```

### Executer prolog dans le container

```bash 
docker exec -it prolog swipl
```

Mettre les fichiers prolog dans le dossier scripts

*Normalment, prolog devrait avoir accès aux différent fichiers dans scripts*

```bash 
?- [scripts/index.pl].
```
