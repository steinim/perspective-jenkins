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

Add the following to Vagrant file to forward a port from Virtualbox to local machine:
```config.vm.forward_port <port to forward from>, <port to forward to>```

Run ```vagrant reload``` to set up the forwarding.

Add git to the box: 
```config.vm.provision :shell, :inline => "apt-get install -q -y git"```

Run ```vagrant provision``` to make it happen.

License
-------

MIT
