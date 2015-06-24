# project-management skeleton

The **project-management** skeleton contains everything needed to start and control an Agile software project.

## Clone the skeleton

    git clone git@oxford.saperea.com:skel/project-management.git ~/scratch/project-management

## Scaffold the skeleton in the current directory

    workon mrbob
    mrbob -w ~/scratch/project-management/skel
    deactivate mrbob
    less Readme.md

## Test the skeleton

It is possible to test the skeleton in the local directory.  The following process will build everything.

    make test

Also, test the graffle-rendering function

    make test-graffle

