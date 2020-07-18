FROM bighill2000/distcc 

#ADD build.sh /tmp/build.sh
#RUN /tmp/build.sh

USER root 
EXPOSE 3632
ENTRYPOINT ["distccd"]
CMD ["--no-detach", "-a"," 192.168.29.90"]
