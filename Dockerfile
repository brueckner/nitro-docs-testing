FROM sphinxdoc/sphinx

WORKDIR /docs
COPY requirements.txt /docs
COPY conf.py /docs/conf.py
COPY _templates /docs/_templates
COPY _static /docs/_static
COPY _redirects /docs/_redirects
COPY locales /docs/locales
COPY source /docs
RUN pip3 install -r requirements.txt
