│ File: script.sh
───────┼─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ echo "FROM ubuntu:22.04" > Dockerfile
   2   │ echo "RUN apt-get update && \
   3   │     apt-get install -y --no-install-recommends apache2 && \
   4   │     apt-get clean && \
   5   │     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" >> Dockerfile
   6   │
   7   │ echo "COPY index.html /var/www/html/" >> Dockerfile
   8   │ echo "EXPOSE 80 " >> Dockerfile
   9   │ echo 'CMD ["apache2ctl", "-D", "FOREGROUND"]' >> Dockerfile
  10   │
  11   │ docker build -t web2 .
  12   │ docker run -t -d -p 80:80 --name web2 web2
  13   │ docker ps -a
