FROM python:3.6.1

WORKDIR /tmp
ADD * /tmp/

RUN pip install --no-cache --upgrade pip
RUN python3 -m venv myenv && . myenv/bin/activate
RUN pip install --trusted-host pypi.python.org -r requirements.txt
#RUN sudo pip install --no-cache notebook
#RUN sudo pip install --no-cache conda
#RUN sudo pip install --trusted-host pypi.python.org -r requirements.txt

#CMD /run.sh
#CMD ["source", "activate", "environment", "&&", "jupyter", "notebook",  "--ip", "0.0.0.0"]
