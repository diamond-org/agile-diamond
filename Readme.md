# project-management skeleton

The **project-management** skeleton contains everything needed to start and control an Agile software project.

## Clone the skeleton

    git clone git@oxford.saperea.com:skel/project-management.git ~/scratch/project-management

## Scaffold the skeleton in the current directory

    workon mrbob
    mrbob -w ~/scratch/project-management/skel
    deactivate mrbob

## Open the agile checklist

The steps required to complete the project are delineated in the Checklist.  Open up that file and take it from there.

    open assets/agile/Checklist.oo3

## Render the documentation and view in a browser

This project's documentation are designed to be rendered as a website.

    make
    open output/index.html

## Test the skeleton

It is possible to test the skeleton in the local directory.  The following process will build everything.

    make test

