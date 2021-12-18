FROM kalilinux/kali-rolling
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    kali-linux-headless \
    man-db
SHELL ["/bin/bash", "-c"]
CMD /usr/bin/tmux -l -c "/bin/bash -l"
