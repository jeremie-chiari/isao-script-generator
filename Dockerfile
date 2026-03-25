FROM nginx:alpine
COPY output/creer-jeu-2d-claude-code/06-production.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
