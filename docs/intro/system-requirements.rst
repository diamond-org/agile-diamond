System Requirements
===================

Agile-Diamond requires some software to be installed in order to function.  Once you have installed these requirements, you can follow the :doc:`quick-start` to start your first project.  The following packages should be installed globally, as the superuser, for all users on the system to access.

- `Python 2.7.x <https://www.python.org/download/releases/2.7/>`_.
- Python development libraries (i.e. header files for compiling C code)
- `pip <http://pip.readthedocs.org/en/latest/>`_
- `virtualenv <http://virtualenv.readthedocs.org/en/latest/>`_
- `virtualenvwrapper <http://virtualenvwrapper.readthedocs.org/en/latest/>`_

The following sections describe the process for installing these requirements on various systems.  In each of the following examples, it is assumed you will be using a root account (or some other privileged account).

If you do not have root access, then refer to the section :ref:`unprivileged-installation` for information about creating a virtualenv in your user account.

Debian/Ubuntu
-------------

Agile-Diamond installs cleanly on Debian and Ubuntu systems released after 2011.

::

    apt-get install python python-dev python-pip build-essential
    apt-get install sqlite-dev
    pip install --upgrade pip
    pip install --upgrade virtualenv
    pip install virtualenvwrapper

Redhat
------

Agile-Diamond can be installed on RedHat, but ensure your package manager is installing Python 2.7; as of August 2015, RHEL provides an older version.

::

    yum install python python-devel python-pip
    yum install sqlite-devel
    pip install --upgrade pip
    pip install --upgrade virtualenv
    pip install virtualenvwrapper

OSX with Homebrew
-----------------

Agile-Diamond installs pretty easily on OSX with Homebrew.  Make sure you are using the *admin* user for this process, just like a normal Homebrew operation.

::

    brew install python --universal --framework
    brew install pyenv-virtualenv
    brew install pyenv-virtualenvwrapper
    brew install sqlite
    pip install --upgrade pip

Windows with Cygwin
-------------------

Here are a few resources to get you started:

- http://www.pdxpixel.com/blog/setting-up-python-and-virtualenv-windows-cygwin/
- http://atbrox.com/2009/09/21/how-to-get-pipvirtualenvfabric-working-on-cygwin/
- http://anythingsimple.blogspot.ca/2010/04/using-pip-virtualenv-and.html
- http://stackoverflow.com/questions/2173963/how-do-i-get-virtualenvwrapper-and-cygwin-to-co-operate

**Note**: Have you done this install successfully?  Let us know!

.. _unprivileged-installation:

Unprivileged Installation
-------------------------

Sometimes, you do not have root access to the system.  It is still possible to use Agile-Diamond, but the installation process is slightly different because it does not use virtualenvwrapper.  Instead, you will create your virtualenv directly and use the `activate` macro to work on it.

::

    curl -O https://raw.github.com/pypa/virtualenv/master/virtualenv.py
    python virtualenv.py my-diamond-app
    . my-diamond-app/bin/activate
    pip install Agile-Diamond
