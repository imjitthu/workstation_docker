create container without starting:
    docker create image:tag

rename an existing container
    dockekr rename cname new_cname

run a command in new container
    docker run image command

remove conatiner after it exits
    docker rub --rm image:tag

start a container and keep it running
    docker run -td image:tag

start a container and create an interactive bash shell in the container
    docker run -it image:tag

create start and run a command inside the conatiner and remove the conatainer afetr executing the cpmmand
    docker run -it-rm image:tag

execute command inside existing container
    docker exec -it cname/cid

delete a container
    docker rm cid/cname

update the configuration of the container
    docker update cid/cname

start stop and resatrt container
    docker start cid/cname
    docker stop cid/cname
    docker restart cid/cname

pause / unpause processes in a running conatiner.
    docker pause cname/cid
    docker unpause cname/cid
   
block container until others stop
    docker wait cid/cname

kill a container by sending a SIGKILL to a running container
    docker kill cid/cname

attach local standard input/output abd error strems to a running container
    docker attach cid/cname

Docker image commands:
    docker build url/file
    docker build -t url/file:tag
    docker pull image:tag
    docker push image:tag

create an image form tarball
    docker import url/file

create an image from container
    docker commit cname new_image_name

remove an image from local
    docker rmi image:tag

load an image from a tar or stdin
    docker load tar_file/stdin_file

save image to a tar archive
    docker save image > tar_file

docker container and image information
    docker ps (get running containers)
    docker ps -a (get all containers)
    docker logs cname/cid (get logs)
    docker inspect cname/cid or image_name/image_id (inspect object)
    docker events cname/cid (realtime events)
    docker port cname/cid (show port mapping for a container)
    docker top cname/cid (show running processes in a container)
    docker stats cname/cid (show live resources usage stats)
    docker diff cname/cid (show changes in file/filesystem)
    docker image ls (list all docker images)
    docker network ls (list all networks)
    docker network rm name (remove a network)
    docker network inspect network (inspect network)
    docker network connect network container (connects conatainer to network)
    docker network disconnect network container (disconnects the network with container)
