# Anki Sync Server for YunoHost

[![Integration level](https://dash.yunohost.org/integration/anki-sync-server.svg)](https://dash.yunohost.org/appci/app/anki-sync-server) ![Working status](https://ci-apps.yunohost.org/ci/badges/anki-sync-server.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/anki-sync-server.maintain.svg)

[![Install Anki Sync Server with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=anki-sync-server)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install Anki Sync Server quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

Anki is a program which makes remembering things easy. Because it's a lot more efficient than traditional study methods, you can either greatly decrease your time spent studying, or greatly increase the amount you learn.

This package installs the official Anki Sync Server, which allows you to host your own synchronization server for the Anki flashcard application instead of using AnkiWeb.

**Shipped version:** 25.09~ynh1

**Demo:** <https://apps.ankiweb.net/>

## Screenshots

![Screenshot of Anki](./doc/screenshots/anki-screenshot.png)

## Documentation and resources

- Official app website: <https://apps.ankiweb.net/>
- Official admin documentation: <https://docs.ankiweb.net/sync-server.html>
- Upstream app code repository: <https://github.com/ankitects/anki>
- YunoHost Store: <https://apps.yunohost.org/app/anki-sync-server>
- Report a bug: <https://github.com/YunoHost-Apps/anki-sync-server_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/anki-sync-server_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/anki-sync-server_ynh/tree/testing --debug
or
sudo yunohost app upgrade anki-sync-server -u https://github.com/YunoHost-Apps/anki-sync-server_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>

