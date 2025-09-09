A docker to run subset of BIAD for training/testing/preparing new dataset 

To build the docker:

```bash
docker build -t biad-mini . 
```

To run it:


```bash
docker run -d  --name=mini-biad  --network="host"  biad-mini:latest
```

We use network="host" so connection to the mysql server are made through 127.0.0.0
This could be adjusted at install time

There is a first dummy user call `test_user` that can be used to read the database:

```bash
mysql -u test_user -pyour_test_user_password -h 127.0.0.1
```
