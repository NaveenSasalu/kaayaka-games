FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY *.html /usr/share/nginx/html/
RUN chown -R nginx:nginx /usr/share/nginx/html
USER nginx
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
