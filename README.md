A docker to run subset of BIAD for training/testing/preparing new dataset 

To build the docker:

```bash
docker build -t biad-mini . 
```

To run it:


```bash
docker run -d  --name=mini-biad  --network="host"  biad-mini:latest
```


We use network="host" so connection to the mysql server are made through 127.0.0.1
This could be adjusted at install time

To check everything is ok:

```
docker logs mini-biad  
```


If the log show that mariadb is accepting connection you can useT a the dummy user called `test_user` to connect to the database

```bash
mysql -u test_user -ptest1234 -h 127.0.0.1
```


