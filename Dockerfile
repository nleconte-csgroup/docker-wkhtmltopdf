FROM ubuntu

RUN apt update &&\
    apt install curl &&\
    curl -O -L https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb &&\
    apt install ./wkhtmltox-0.12.2.1_linux-trusty-amd64.deb &&\
    rm wkhtmltox-0.12.2.1_linux-trusty-amd64.deb

ENTRYPOINT ["wkhtmltopdf"]

# Show the extended help
CMD ["-h"]
