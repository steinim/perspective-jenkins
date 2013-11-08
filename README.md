perspective-jenkins
==================

Build the Docker container:
====================
```docker build -t perspective-jenkins - < Dockerfile```

Run the Docker container:
====================
```docker run -p <port to forward to>:<port to forward from> -e SERVER_PORT=<port> -e JENKINS_USERNAME="hei" -e JENKINS_URL="<jenkind url>" -e SERVER_ALLOWED_ORIGIN="<some url>" perspective-jenkins```

License
-------

MIT
