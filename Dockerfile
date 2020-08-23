RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
FROM devopsedu/webapp 
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD [ "-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]
EXPOSE 80
