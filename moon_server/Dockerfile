FROM nginx:latest
ENV MOON_LAMP_HOST=0.0.0.0
COPY src /usr/share/nginx/html
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD ["/startup.sh"]