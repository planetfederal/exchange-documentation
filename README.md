# Installation

```pip install -r requirements.txt```


# Not Working :(
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

## Build MKDocs

```mkdocs build --clean```

## Create Pandoc File:

```mkdocs2pandoc > exchangedocs.pd```

## Generate PDF Document:

```pandoc --toc -f markdown+grid_tables+table_captions -o exchange-documentation.pdf exchangedocs.pd```
