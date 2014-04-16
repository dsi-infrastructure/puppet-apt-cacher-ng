## Utilisation du module

* Ce module utilise les "hiera", veuillez créer un répertoire "apt-cacher-ng" dans le dossier hieradata.
* Dans ce nouveau répertoire veuillez créer un fichier portant le nom suivant : srv1.dev.yaml
* Ce fichier doit contenir ce qui suit :

```
---
apt-cacher-ng::account: admin
apt-cacher-ng::password: password
```

Veuillez évidement changer le login ou le mot de passe suivant vos propres spécifications.
