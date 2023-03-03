# webssh

![image](https://user-images.githubusercontent.com/80840076/222836572-293aa7aa-8404-46ec-a0a3-ca69fa86b664.png)

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


You can also build the image . Run below command 
```
docker build -t webssh .
```

Thanks 
