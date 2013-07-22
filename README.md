# Apt-cacher-ng [![Build Status](https://travis-ci.org/sipf-infrastructure/apt-cacher-ng.png?branch=master)](https://travis-ci.org/sipf-infrastructure/apt-cacher-ng)

## Installation du module
```bash
$ mkdir apt-cacher-ng
$ cd apt-cacher-ng
$ git clone https://github.com/sipf-infrastructure/apt-cacher-ng.git
```

## Utilisation

Dans le fichier '/etc/puppet/manifests/site.pp', on définit ce qui suit :
```ruby
node test {
        class { 'apt-cacher-ng':
                account		=> admin,
                password	=> password,
        }
}
```
Lors du démarrage de ce logiciel, une interface d'administration est accessible (sur le port 3142 par défaut). Le paramètre **account** et **password** permet de sécuriser un minimum l'accès à cette interface.

