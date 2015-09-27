# Agile-Diamond

**Agile-Diamond** contains everything needed to start and control an Agile software project.

## Install python pre-requisites

    pip install mr.bob

## Clone the skeleton

    git clone https://github.com/diamond-org/agile-diamond.git /tmp/agile-diamond

## Scaffold the skeleton in the current directory

    mkdir my-agile-project && cd my-agile-project
    mrbob -w /tmp/agile-diamond/skel
    less Readme.md

## Test the skeleton

It is possible to test the skeleton in the local directory.  The following process will build everything.

    make test

Also, test the graffle-rendering function

    make test-graffle

## Application Development with Flask-Diamond

Agile-Diamond is well suited to application development using the [Flask-Diamond](http://flask-diamond.org) framework.  **Flask-Diamond** is a batteries-included Flask framework. Easily scaffold a working application with sensible defaults, then override the defaults to customize it for your goals.
