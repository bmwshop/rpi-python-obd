FROM armhf/alpine

MAINTAINER dima@us.ibm.com

RUN apk update && apk add bluez python py-pip
RUN pip install obd
RUN add test.py /test.py

WORKDIR /

RUN rm -rf /var/cache/apk/*

CMD ["python", "/firmware.py"]
