FROM ubuntu

#update, clean, install jupyter-lab
RUN apt update && apt upgrade -y && apt autoremove -y && \
	apt install python3-pip -y && \
	apt clean && \
	rm -rf /var/lib/apt/lists/* && \
	pip3 --no-cache install jupyter-lab

#run jupyter
CMD [ "jupyter-lab", \
"--ip", "0.0.0.0", "--allow-root",\
"--NotebookApp.token=''", "--NotebookApp.password=''", "--no-browser", "/" ]

#use this port
EXPOSE 8888
