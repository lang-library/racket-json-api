#! /usr/bin/env bash
set -uvx
set -e
scribble --markdown --dest . --dest-name README.md json-api.scrbl
