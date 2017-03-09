django-exchange-docs
====================

A Django wrapper for Boundless Exchange Documentation.

Build
-----

::

    git clone https://github.com/boundlessgeo/exchange-documentation.git
    cd exchange-documentation
    virtualenv venv
    source venv/bin/activate
    git submodule init
    git submodule update
    make html

Installation
------------

::

    pip install git+git://github.com/boundlessgeo/exchange-documentation@master#egg=django-exchange-docs

Project Configuration
---------------------

Once installed you can configure your project to use
django-exchange-docs with the following steps.

Add ``exchange-docs`` to ``INSTALLED_APPS`` in your project's
``settings`` module:

::

    INSTALLED_APPS = (
        'exchange-docs',
        # other apps
    )
