# CSC466 Cluster

A template to support development of containerization learning materials

## Notes:

### Building the images

- You should build the images in the following order:
~~~
docker compose build base --no-cache
docker compose build head --no-cache
~~~

### Pushing the images

~~~
docker compose push base
docker compose push head
~~~

### Launching the cluster

- You should launch in the following order:
~~~
docker compose up -d head
docker compose up -d compute01
docker compose up -d compute02
~~~

### Setup user

This is done manually after building the base

~~~bash
ssh-keygen -b 2048 -t rsa -f /home/$uid/.ssh/id_rsa -q -N ""
    install -o $idnumber -g $idnumber -m 0600 /home/$uid/.ssh/id_rsa.pub /home/$uid/.ssh/authorized_keys
    cat > /home/$uid/.ssh/config <<EOF
Host *
   StrictHostKeyChecking no
   UserKnownHostsFile /dev/null
EOF
    chmod 0600 /home/$uid/.ssh/config
    cp /etc/skel/.bash* /home/$uid
~~~

After this is done, update `.gitignore` so that temporary files generated in home are not included. 

### Build mkdocs server (for instructor)

`mkdocs serve --dev-addr=0.0.0.0:8000` to support external view of mkdocs
