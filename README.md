# Ubuntu 26.04 Ansible Test Image

[![01]][02]
[![03]][04]

This repository contains a `Dockerfile` that is used to create an **Ubuntu 26.04** based docker container image with `ansible` and `systemd` preinstalled.

## 🚀 Motivation

The container image that is created from this repository can be used for Ansible role testing.

The `systemd` package is installed so that this container image can be used to test Ansible roles that deploy services.

## 📦 Build process

This container image is built and uploaded automatically to Docker Hub once a week and any time a commit is made or merged to the `main` branch.

## 🏗️ Docker image

To get the container image that is created from this repository, execute: `docker pull fernandobohrer/docker-ansible-ubuntu-2604:latest`

## 🏷️ Tags

- `latest`: Latest stable version of `ansible`.

## ⚠️ Warning

Use this repository and the docker image that it creates at your own risk!

## 📝 License

This project is licensed under the terms of the [MIT license][05].

[01]: https://img.shields.io/github/actions/workflow/status/fernandobohrer/docker-ansible-ubuntu-2604/build-test-and-push-docker-image.yml?branch=main&event=push&style=flat-square&logo=github&logoColor=white&label=Build%2C%20test%20and%20push%20docker%20image&labelColor=black&cacheSeconds=300
[02]: https://github.com/fernandobohrer/docker-ansible-ubuntu-2604/actions/workflows/build-test-and-push-docker-image.yml
[03]: https://img.shields.io/docker/pulls/fernandobohrer/docker-ansible-ubuntu-2604?style=flat-square&logo=docker&logoColor=white&label=pulls&labelColor=black&cacheSeconds=300
[04]: https://hub.docker.com/r/fernandobohrer/docker-ansible-ubuntu-2604/
[05]: /LICENSE
