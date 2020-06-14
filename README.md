# pihole-coredns-tls-docker
Easily set up pihole and coredns to use DNS over TLS with Docker. Currently used on and tested on a single Raspberry Pi 4 but I'm sure it will work on any unix based system.

1) Install docker and docker-compose
2) Clone this repo
3) Change to `coredns` directory and run the `genCerts.sh` script.
4) Go back to root directory and edit `docker-compose.yml` and set a web password. Also change the topmost DNS server for pihole to your gateway's IP. Mine happens to be `10.30.0.1`
5) Run `docker-compose up -d`
6) Go to IP of server to enter pihole dashboard, deselect prior DNS settings and set DNS custom1 to `172.10.10.100#53` for coredns

### Verify DNS over TLS
Use any of the following:
1) https://www.cloudflare.com/ssl/encrypted-sni/
2) https://1.1.1.1/help
