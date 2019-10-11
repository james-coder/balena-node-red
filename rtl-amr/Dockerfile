FROM alpine:3.6

RUN apk add --no-cache musl-dev gcc make cmake pkgconf git libusb-dev

WORKDIR /usr/local/
RUN git clone git://git.osmocom.org/rtl-sdr.git

RUN mkdir /usr/local/rtl-sdr/build
WORKDIR /usr/local/rtl-sdr/build
RUN cmake ../ -DDETACH_KERNEL_DRIVER=ON
RUN make
RUN make install

WORKDIR /usr/src/app
# This will copy all files in our root to the working  directory in the container
COPY ./app ./

CMD ["bash", "/usr/src/app/start.sh"]
