## Docker container for Raspberry Pi OBD2 Python library

Trying to make this as small as possible.  It is currently 65.68M 

```
docker build -t obd2 .
docker run --privileged --net=host -v /dev:/dev --name obd2 -ti obd2 sh
python test.py
```
Running test.py validates the installation.  See the [Python OBD github](https://github.com/brendan-w/python-OBD) for more information.

