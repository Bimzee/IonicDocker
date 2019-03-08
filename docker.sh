#!bin/bash

case "$1" in
	install)
		docker build -t ionic4 .
		;;
    start)
        export ionic4docker='docker run -it --rm -v $PWD:/project:rw -p 8100:8100 -p 35729:35729 -p 53703:53703 --name ionic4-app ionic4 ionic'
        eval $ionic4docker start
		;;
	shell)
		docker exec -it ionic4-app bash
		;;
	*)
        echo "Pick an Option:"
        echo " - install -- build ionic4 docker container"
        echo " - start -- starts new ionic project"
		echo " - shell -- to get access to the shell"
		;;
esac