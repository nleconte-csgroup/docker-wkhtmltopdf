FROM ubuntu

RUN apt update -y &&\
    apt upgrade -y &&\
    apt install curl -y &&\
    curl -O -L https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb &&\
    apt install ./wkhtmltox_0.12.6-1.focal_amd64.deb &&\
    rm wkhtmltox_0.12.6-1.focal_amd64.deb

ENTRYPOINT ["wkhtmltopdf"]

# Show the extended help
CMD ["-h"]
