# Installation

```pip install -r requirements.txt```

## Build MKDocs

```mkdocs build --clean```

Copy the contents of exchange-documentation/sites to any web accessible directory or web server.

## Dependencies need for PDF Creation

### Ubuntu:

```
apt-get install -y fonts-lmodern \
                   lmodern \
                   pandoc \
                   texlive-base \
                   texlive-latex-extra \
                   texlive-fonts-recommended \
                   texlive-latex-recommended \
                   texlive-xetex
```

### MacOSX:

```brew install pandoc```

Download and Install - [MacTeX ~2.96GB](http://tug.org/cgi-bin/mactex-download/MacTeX.pkg)

## Create Pandoc File:

```mkdocs2pandoc > exchangedocs.pd```

## Generate PDF Document:

```pandoc --toc -f markdown+grid_tables+table_captions -o exchange-documentation.pdf exchangedocs.pd```
