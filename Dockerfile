FROM armhf/alpine

MAINTAINER dima@us.ibm.com

RUN apk update && apk add bluez python py-pip
RUN pip install obd
ADD test.py /test.py

WORKDIR /

RUN rm -rf /var/cache/apk/*

CMD ["python", "/test.py"]
