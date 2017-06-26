# Run behind nginx-proxy

docker run -e "VIRTUAL_HOST=your.domain.com" -e "LETSENCRYPT_HOST=your.domain.com" -e "LETSENCRYPT_EMAIL=your@email" --network nginx_proxy spotproxy
