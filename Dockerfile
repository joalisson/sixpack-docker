FROM python:2.7.7

MAINTAINER Leonardo Gamas <leogamas@gmail.com>

RUN pip install sixpack==2.7.0
RUN pip install gunicorn==19.4.1
RUN pip install gevent==20.6.2

ENTRYPOINT ["gunicorn", "--access-logfile", "-", "-w", "8", "-b", "0.0.0.0:8000", "--worker-class=gevent"]
