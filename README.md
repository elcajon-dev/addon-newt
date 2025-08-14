# Home Assistant Add-on: Newt

[![GitHub Release][releases-shield]][releases]
![Project Stage][project-stage-shield]
[![License][license-shield]](LICENSE.md)
![Reported Installations][installations-shield-stable]

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

[![Github Actions][github-actions-shield]][github-actions]
![Project Maintenance][maintenance-shield]
[![GitHub Activity][commits-shield]][commits]

A tunneling client for Pangolin run on your Home Assistant instance

## About

[Newt](https://github.com/fosrl/newt) is a fully user space WireGuard
tunnel client and TCP/UDP proxy, designed to securely expose private resources
controlled by Pangolin. By using Newt, you don't need to manage complex
WireGuard tunnels and NATing.

Installing this add-on on your Home Assistant instance enables you to
connect your Home Assistant and other local ressources to Pangolin.

[:books: Read the full add-on documentation][docs]

## Installation

To install this Add-On, manually add the HA-Addons repository to Home Assistant
using [this GitHub repository][ha-addons] or by clicking the button below.

[![Add Repository to HA][my-ha-badge]][my-ha-url]

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-no-red.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-no-red.svg
[commits-shield]: https://img.shields.io/github/commit-activity/y/elcajon-dev/addon-newt.svg
[commits]: https://github.com/elcajon-dev/addon-newt/commits/main
[docs]: https://github.com/elcajon-dev/addon-newt/blob/main/newt/DOCS.md
[github-actions-shield]: https://github.com/elcajon-dev/addon-newt/workflows/CI/badge.svg
[github-actions]: https://github.com/elcajon-dev/addon-newt/actions
[license-shield]: https://img.shields.io/github/license/elcajon-dev/addon-newt.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2025.svg
[releases-shield]: https://img.shields.io/github/release/elcajon-dev/addon-newt.svg
[releases]: https://github.com/elcajon-dev/addon-newt/releases
[project-stage-shield]: https://img.shields.io/badge/project%20stage-production%20ready-brightgreen.svg
[my-ha-badge]: https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg
[my-ha-url]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Felcajon-dev%2Frepository-stable
[ha-addons]: https://github.com/elcajon-dev/repository-stable
[installations-shield-stable]: https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fanalytics.home-assistant.io%2Faddons.json&query=%24%5B%22a03729f7_newt%22%5D.total&label=Reported%20Installations&link=https%3A%2F%2Fanalytics.home-assistant.io/add-ons
[installations-shield-edge]: https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fanalytics.home-assistant.io%2Faddons.json&query=%24%5B%22dca9deef_newt%22%5D.total&label=Reported%20Installations&link=https%3A%2F%2Fanalytics.home-assistant.io/add-ons
