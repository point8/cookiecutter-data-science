#!/bin/bash

if [ "{{ cookiecutter.pip_install }}" = "y" ]; then
    pip install "{{ cookiecutter.module_name }}"
fi]
