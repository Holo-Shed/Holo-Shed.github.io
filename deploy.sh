#!/usr/bin/env bash
#
# Script to deploy MKDocs-based docs
# copied directly from:
# https://www.mkdocs.org/user-guide/deploying-your-docs/#organization-and-user-pages
#
# Usage: ./deploy.sh

mkdocs gh-deploy --config-file ../Holo-Shed.github.io/mkdocs.yml --remote-branch main

