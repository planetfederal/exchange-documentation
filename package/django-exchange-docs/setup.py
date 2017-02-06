import os
from setuptools import setup, find_packages

with open('README.rst', 'r') as inp:
    LONG_DESCRIPTION = inp.read()

setup(
    name='django-exchange-docs',
    version='1.1.3',
    author='Boundless Spatial',
    author_email='contact@boundlessgeo.com',
    url='https://github.com/boundlessgeo/exchange-documentation',
    download_url="https://github.com/boundlessgeo/exchange-documentation",
    description="A Django wrapper for Boundless Exchange Documentation.",
    long_description=LONG_DESCRIPTION,
    license='GPLv2',
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    classifiers=[
        'Topic :: Documentation :: Sphinx',
        'Topic :: Software Development :: Documentation',
        'Intended Audience :: End Users/Desktop',
        'Intended Audience :: System Administrators',
        'Environment :: Web Environment',
        'License :: OSI Approved :: GNU General Public License v2 (GPLv2)',
        'Development Status :: 3 - Alpha',
        'Operating System :: OS Independent',
        'Programming Language :: Python :: 2.7',
        'Framework :: Django :: 1.8',
    ]
)
