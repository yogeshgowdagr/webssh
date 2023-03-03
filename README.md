# webssh
Web based SSH access
clone this repo 
```
git clone https://github.com/yogeshgowdagr/webssh.git
cd webssh 
```
First of all create keys using below command 

```
openssl req -x509 -newkey rsa:4096 -keyout cert.crt -out crt.key -sha256 -days 36500 -nodes
```
Bring up the container 
```
docker-compose up -d 
```
Now you can open `localhost:8000` and access the webssh
