---
title: "Diamond Agile Project Management"
---

# overview

This project is a clone of the Diamond Agile Project Management template.  The template provides a starter set of documents that generally adhere to the agile methodology.  A project can be planned and managed by filling out the documents in this template.

# getting started

The steps required to complete the project are delineated in the Checklist.  Open up that file and take it from there.

    open assets/agile/*Checklist.oo3

# using this documentation

The Checklist is an ordered path through the documents.  Editing the documents in the order specified by the Checklist will ensure the right questions are asked at the right time and the answers are written down for everybody to see.

At a certain point, the Timeline becomes a more important document for planning the completion of the project, but the Checklist addresses this.

# representations of the project

The basic agile project management process involves editing the documentation in order to generate the proper representation of project ideas for communication with various audiences.

For example: the Charter document is important for starting the project.  Stakeholders might edit the document, so a .docx file might be the best representation for them.  Meanwhile, team members should benefit most from a full-screen presentation so that they can engage in a discussion.

This project documentation can be folded into multiple representation states for consumption by different audiences:

- **managing state**, which is typically Markdown; this is stored in version control and all other states are derived from it
- **team discussion state**, which is a series of several PDFs that have lots of pages and very few lines per page; intended for team consumption
- **using state**, which is an HTML-based website starting with the Project Guide that pulls together all of the project artifacts
- **archival state**, which is a single "Complete Project" PDF that contains every document used in the project
- **migrated managing state**, which is typically contained within a wiki; at this point, it is difficult to convert the project into any other state

## to facilitate management

The files in this very folder are the management files.  In their raw format, these files are typically Markdown or an OmniGroup format (e.g. OmniGraffle).  It is easy to edit and version control these files.

## to facilitate team discussion

Presentations are a good way to communicate an idea to lots of people.  Many of the documents in this project can be easily rendered as a presentation.  The resulting presentations are PDF files that can be displayed in full-screen on a big display so everybody can see.

    make presentations

## to facilitate use

This project's documentation is designed to be rendered as a website.  The main page of the site is the Project Guide, so it already links through to the rest of the documents in the project.  This site is designed to be mirrored onto a local web server so the team can easily refer to it to perform routine tasks.

    make
    open output/index.html

## to facilitate archival and sharing

The project documentation can be consolidated into a single PDF file.  The resulting file is easy to archive and share externally (e.g. via email).  It has all the same information as the website and presentations, but it is self-contained and has no dependencies.

    make pdf

# Diamond

This template is closely tied to the Diamond ecosystem (Flask-Diamond and Domo-Diamond). Flask-Diamond is a Python application platform for building software with a Model-View-Controller pattern.  Domo-Diamond is a Puppet configuration environment based on Ubuntu Linux LTS that provides a consistent deployment target for Flask-Diamond applications.

Despite this underlying assumption, most of the Diamond Agile Project Management template will generalize to any software engineering project.
