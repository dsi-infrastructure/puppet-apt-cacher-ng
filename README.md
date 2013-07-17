# Authldap

Testé avec Travis CI

[![Build Status](https://travis-ci.org/sipf-infrastructure/apt-cacher-ng.png?branch=master)](https://travis-ci.org/sipf-infrastructure/apt-cacher-ng)

# Installation du module

```
$ mkdir apt-cacher-ng
$ cd apt-cacher-ng
$ git clone https://github.com/sipf-infrastructure/apt-cacher-ng.git

```

# Utilisation

Dans le fichier '/etc/puppet/manifests/site.pp', on définit ce qui suit :
```
node test {
        class { 'apt-cacher-ng':
                account		=> admin,
                password	=> password,
        }
}
```
