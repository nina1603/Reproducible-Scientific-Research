FROM circleci/python:3.6.1
MAINTAINER nina.antonova@phystech.edu

ENTRYPOINT [ “/bin/bash”, “-c” ]
WORKDIR /tmp
ADD * /tmp/

RUN sudo pip install —no-cache —upgrade pip
RUN sudo pip install —no-cache notebook
RUN sudo pip install —trusted-host pypi.python.org -r requirements.txt
RUN cd /tmp && ./run.sh

#CMD /bin/sh
CMD ["source", "activate", "environment", "&&", "jupyter", "notebook", "--ip", "0.0.0.0"]
