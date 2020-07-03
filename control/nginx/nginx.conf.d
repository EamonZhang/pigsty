server {
  listen       80;
  server_name  *.pigsty;
  location / {
    root   /www;
    index  index.html index.htm;
    autoindex on;
    autoindex_exact_size on;
    autoindex_localtime on;
    autoindex_format html;
  }

  location /nginx_status {
    stub_status on;
    access_log off;
  }
}
server {
  listen       80;
  server_name  g.pigsty;
  location / {
    proxy_pass http://localhost:3000/;
  }
}
server {
  listen       80;
  server_name  pg.pigsty;
  location / {
    proxy_pass http://localhost:5050/;
  }
}
server {
  listen       80;
  server_name  c.pigsty;
  location / {
    proxy_pass http://localhost:8500/;
  }
}
server {
  listen       80;
  server_name  p.pigsty;
  location / {
    proxy_pass http://localhost:9090/;
  }
}
server {
  listen       80;
  server_name  am.pigsty;
  location / {
    proxy_pass http://localhost:9093/;
  }
}
server {
  listen       80;
  server_name  ha.pigsty;
  location / {
    proxy_pass http://localhost:8000/;
  }
}