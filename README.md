# interactive_book
A template to support development of containerization learning materials

## Notes:

### Building the images
- If you are on a Mac/Linux machine, you only need to run the following to automate the build process
~~~
./build.sh
~~~

- If you are on a Windows machine, run the following:

~~~
.\build.bat
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
