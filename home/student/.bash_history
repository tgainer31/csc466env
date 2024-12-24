cd
ls
ssh-keygen -b 2048 -t rsa -f /home/student/.ssh/id_rsa -q -N ""
cd .ssh
ll
ls -l
cp id_rsa.pub authorized_keys
ls
vim config
chmod config 0600
chmod 0600 config
cd
ls
cp /etc/skel/bash* /home/student/
ls /etc/skel/
ls /etc/skel/.bash* /home/student/
cp /etc/skel/.bash* /home/student
ls
cd
vim .bashrc
exit
ls
ls -al
exit
ssh localhost
exit
