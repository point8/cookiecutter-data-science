#!/bin/bash

if [ "{{ cookiecutter.pip_install }}" = "y" ]; then
    pip install -U -e .
fi
