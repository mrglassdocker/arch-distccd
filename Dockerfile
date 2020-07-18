FROM bighill2000/distcc 

ADD build.sh /tmp/build.sh
RUN /tmp/build.sh

USER root 
EXPOSE 3632
ENTRYPOINT ["distccd"]
CMD ["--daemon","--no-detach","--listen","0.0.0.0", "-a","0.0.0.0","--user","distcc"]
