function devbox
    if math "1<" (count $argv) > /dev/null
            docker run -it \
                -v /Users/tbarlow/Dropbox/keys/ssh_tombee:/home/dev/.ssh \
                -v /var/run/docker.sock:/var/run/docker.sock \
                --name $argv[1] \
                --hostname $argv[1] \
                $argv[2..(count $argv)] \
                tombee/devbox
    else
            docker run -it \
                -v /Users/tbarlow/Dropbox/keys/ssh_tombee:/home/dev/.ssh \
                -v /var/run/docker.sock:/var/run/docker.sock \
                --name $argv[1] \
                --hostname $argv[1] \
                tombee/devbox
    end
end

function shipyard_devbox
    devbox shipyard -p 8080:8080 --link shipyard-rethinkdb:rethinkdb
end

function clean_old_docker_containers
    docker ps -a | grep Exit | awk '{ print $1; }' | xargs docker rm
end

function clean_docker_images
    docker images | grep "<none>" | awk '{ print $3;  }' | xargs docker rmi
end
