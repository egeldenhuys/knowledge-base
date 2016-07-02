#!/bin/bash
set -e

printf "Configuring git...\n"

git config --global user.name = "Evert Geldenhuys"
git config --global user.email = "evert.geldenhuys2@gmail.com"
git config --global credential.helper 'cache --timeout=3600'
