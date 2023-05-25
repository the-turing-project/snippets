
// File server in any folder that you want.
rfserve() {
  PORT=":9991"
  IP=$(hostname -i | awk '{print $3}')
  echo "Running FTP server over here =>>> http://$IP$PORT \n\n"
  caddy file-server --browse --listen $PORT
}

// Print the contents of JWT token

rjwt(){
  node -e "require('./tools.js').jwtParse('$1')" 
}
