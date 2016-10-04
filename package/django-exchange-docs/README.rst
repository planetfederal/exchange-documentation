django-exchange-docs
====================

A Django wrapper for Boundless Exchange Documentation.

Installation
------------

Install the latest stable version from PIP:

``pip install django-exchange-docs``

Download django-exchange-docs and install it directly from source:

``python setup.py install``

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
