FROM ubuntu

#base update && upgrade
RUN apt update
RUN apt upgrade -y

#install python
RUN apt install python3-pip -y

#clean
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*

#install jupyter-notebook
RUN pip3 install notebook

#run jupyter
CMD ["jupyter-notebook", "--ip", "0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''", "--allow-root", "--no-browser", "/"]

#use this port
EXPOSE 8888
