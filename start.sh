
#!/bin/bash

echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" >  /etc/resolv.conf
export img2="quay.io/xm0uray/site_5:tag1"
export img="quay.io/xm0uray/site_5:main"
export host="Alphonsoalpatchino-gc-emma-"
export sess="p"
echo $img
docker rm -f $(docker ps -q)
docker rmi -f $img
docker rmi -f $img2
echo  "HOST : [" $host " ] " " | IMAGE_DOCKER : [ "$img " ]" $sess
for (( i=1; i <= 4; i++ )); do
  bash -c  "docker run -d --name $sess$i --cap-add=NET_ADMIN  -h  $host$i --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro $img"
done
for (( i=5; i <= 5; i++ )); do
  bash -c  "docker run -d --name $sess$i --cap-add=NET_ADMIN  -h  $host$i --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro $img2"
done
############################################################################################################################sleep 300


docker exec -it p1 /bin/bash -c 'echo -e "cC2VxqWufkr8ToBE9at6FRS3\n67EaskdoXC7GvjWtvPVyjwRP"  > /root/SDA_ALL/site_5/0nord_pass' &&
docker exec -it p2 /bin/bash -c 'echo -e "66qBPhRmqjk7cWzMpdPzdVVf\n6xbLLReNXEhKhizDEaahhPqE"  > /root/SDA_ALL/site_5/0nord_pass' &&
docker exec -it p3 /bin/bash -c 'echo -e "Lu79P9H6zw1dmFKmvUtEnY8f\n9nTHqT79aaRuQnqhhatW7Lg7"  > /root/SDA_ALL/site_5/0nord_pass' &&
docker exec -it p4 /bin/bash -c 'echo -e "vSno2SMHSaqY6JibKU5rsjLc\nhvL9Am1MtrzcRkEfVb2ekzTH"  > /root/SDA_ALL/site_5/0nord_pass' &&
docker exec -it p5 /bin/bash -c 'echo -e "SMwFhVit1tnCEDE3LMpUGxoN\nkPDXuT5ojHC2ETL59s2A6YwE"  > /root/SDA_ALL/site_5/0nord_pass'








