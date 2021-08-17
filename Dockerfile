FROM ubuntu:20.10

RUN apt update -y &&\
    apt upgrade -y &&\
    apt install curl -y &&\
    curl -O -L https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb &&\
    apt install ./wkhtmltox-0.12.2.1_linux-trusty-amd64.deb &&\
    rm wkhtmltox-0.12.2.1_linux-trusty-amd64.deb

ENTRYPOINT ["wkhtmltopdf"]

# Show the extended help
CMD ["-h"]
