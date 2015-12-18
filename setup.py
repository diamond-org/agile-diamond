import os
import re
from setuptools import setup
from distutils.dir_util import copy_tree


# from https://github.com/flask-admin/flask-admin/blob/master/setup.py
def fpath(name):
    return os.path.join(os.path.dirname(__file__), name)


def read(fname):
    return open(fpath(fname)).read()


file_text = read(fpath('agile_diamond/__meta__.py'))


def grep(attrname):
    pattern = r"{0}\W*=\W*'([^']+)'".format(attrname)
    strval, = re.findall(pattern, file_text)
    return strval


setup(
    version=grep('__version__'),
    name='Agile-Diamond',
    description="Agile-Diamond helps initiate and manage a software development project.",
    scripts=[
        "bin/agile-new.sh",
    ],
    long_description=read('Readme.rst'),
    classifiers=[
        "Development Status :: 4 - Beta",
        "Intended Audience :: Developers",
        "Intended Audience :: Information Technology",
        "Intended Audience :: Science/Research",
        "License :: OSI Approved :: MIT License",
        "Operating System :: POSIX",
        "Operating System :: MacOS :: MacOS X",
        "Programming Language :: Python :: 2.7",
        "Topic :: Office/Business",
    ],
    packages=["agile_diamond"],
    include_package_data=True,
    keywords='',
    author=grep('__author__'),
    author_email=grep('__email__'),
    url=grep('__url__'),
    install_requires=read('requirements.txt'),
    license='MIT',
    zip_safe=False,
)

venv_path = os.environ.get("VIRTUAL_ENV")
if venv_path:
    copy_tree("skels", os.path.join(venv_path, "share/skels"))
else:
    print("This was not installed in a virtual environment")
    print("So, I won't install the skel files.")
