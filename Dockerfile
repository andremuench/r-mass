FROM r-base:3.6.2

WORKDIR /app

RUN R -e "install.packages('renv')"

COPY renv ./renv
COPY .Rprofile ./.Rprofile
COPY renv.lock ./renv.lock

RUN R -e "renv::restore(prompt=FALSE)"
