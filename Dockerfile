FROM circleci/python:3.6.1
MAINTAINER nina.antonova@phystech.edu

ENTRYPOINT [ “/bin/bash”, “-c” ]
WORKDIR /tmp
ADD * /tmp/

COPY requirements.txt ./
RUN sudo pip install --no-cache --upgrade pip
RUN sudo python3 -m venv myenv && . myenv/bin/activate
RUN sudo pip install --trusted-host pypi.python.org -r requirements.txt
#RUN sudo pip install --no-cache --upgrade pip
#RUN sudo pip install --no-cache notebook
#RUN sudo pip install --no-cache conda
#RUN sudo pip install --trusted-host pypi.python.org -r requirements.txt

#CMD /run.sh
#CMD ["source", "activate", "environment", "&&", "jupyter", "notebook",  "--ip", "0.0.0.0"]
