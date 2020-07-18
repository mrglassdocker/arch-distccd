FROM bighill2000/distcc 

#ADD build.sh /tmp/build.sh
#RUN /tmp/build.sh

USER distuser
EXPOSE 3632
ENTRYPOINT ["distccd"]
CMD ["--no-detach", "--allow 192.168.29.0/24"]
