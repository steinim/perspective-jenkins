perspective-jenkins
==================

Build the Docker container:
---------------------------
```docker build -t perspective-jenkins - < Dockerfile```

Run the Docker container:
--------------------------
```docker run -p <port to forward to>:<port to forward from> -e SERVER_PORT=<port> -e JENKINS_USERNAME="<username>" -e JENKINS_URL="<jenkins url>" -e SERVER_ALLOWED_ORIGIN="<some url>" perspective-jenkins```

Using Vagrant and Virtualbox:
-----------------------------

```git clone https://github.com/dotcloud/docker.git```
```cd docker```
```vagrant up```

To forward a port from Vagrant to local machine add the following to Vagrantfile:
```config.vm.forward_port <port to forward from>, <port to forward to>```

To add git add the following to Vagrantfile:
```config.vm.provision :shell, :inline => "apt-get install -q -y git"```

License
-------

MIT
