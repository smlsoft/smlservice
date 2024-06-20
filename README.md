
SML Install Server

```
$ sudo mkdir /data
$ cd /data
$ git clone https://github.com/suteetoe/smlservice.git
$ cd smlservice
$ bash dockerinstall.sh
$ sudo docker network create sml_service_network
$ bash dockerrunallcontainer.sh

```

## for new ubuntu 22.04

```
$ bash dockerrunallcontainer3.sh
```


## For Update 

```
git pull origin master
```

## Change Docker Config Log file 

```ssh
$sudo nano /etc/docker/daemon.json
```

```yaml
{
    "log-driver": "json-file",
    "log-opts": {
        "max-size": "10m",
        "max-file": "10"
    }
}
```
