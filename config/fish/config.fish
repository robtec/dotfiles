function devbox
    docker run -it \
        -v /Users/tbarlow/Dropbox/keys/ssh_tombee:/home/dev/.ssh \
        -v /Users/tbarlow/dev/devbox-$argv[1]:/home/dev/dev \
        -v /var/run/docker.sock:/var/run/docker.sock \
        --name $argv[1] \
        --hostname $argv[1] \
        tombee/devbox
end

function clean_old_docker_containers
    docker ps -a | grep Exit | awk '{ print $1; }' | xargs docker rm
end

function clean_docker_images
    docker images | grep "<none>" | awk '{ print $3;  }' | xargs docker rmi
end
