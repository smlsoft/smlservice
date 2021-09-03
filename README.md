
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

