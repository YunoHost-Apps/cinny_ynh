<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# Cinny for YunoHost

[![Integration level](https://dash.yunohost.org/integration/cinny.svg)](https://dash.yunohost.org/appci/app/cinny) ![](https://ci-apps.yunohost.org/ci/badges/cinny.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/cinny.maintain.svg)  
[![Install Cinny with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=cinny)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Cinny quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

A Matrix client focusing primarily on simple, elegant and secure interface.

### Features

- A nice and clean interface
- End-to-end Matrix encryption support
- Matrix Spaces support


**Shipped version:** 2.0.3~ynh1

**Demo:** https://app.cinny.in

## Screenshots

![](./doc/screenshots/cinny.jpg)

## Disclaimers / important information

* There's no LDAP support (and never will be).
* Cinny only is a client, you need to have an account on a server already (see the Synapse Yunohost app)

## Documentation and resources

* Official app website: https://cinny.in
* Official user documentation: https://cinny.in
* Official admin documentation: https://cinny.in
* Upstream app code repository: https://github.com/ajbura/cinny
* YunoHost documentation for this app: https://yunohost.org/app_cinny
* Report a bug: https://github.com/YunoHost-Apps/cinny_ynh/issues

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/cinny_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/cinny_ynh/tree/testing --debug
or
sudo yunohost app upgrade cinny -u https://github.com/YunoHost-Apps/cinny_ynh/tree/testing --debug
```

**More info regarding app packaging:** https://yunohost.org/packaging_apps