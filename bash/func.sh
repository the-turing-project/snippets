rfserve() {
  PORT=":9991"
  IP=$(hostname -i | awk '{print $3}')
  echo "Running FTP server over here =>>> http://$IP$PORT \n\n"
  caddy file-server --browse --listen $PORT
}