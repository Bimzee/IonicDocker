#!bin/bash

case "$1" in
	install)
		docker build -t ionic3 .
		;;
    start)
        export ionic3docker='docker run -it --rm -v $PWD:/project:rw -p 8100:8100 -p 35729:35729 -p 53703:53703 --name ionic3-app ionic3 ionic'
        eval $ionic3docker start
		;;
	shell)
		docker exec -it ionic3-app bash
		;;
	*)
        echo "Pick an Option:"
        echo " - install -- build ionic3 docker container"
        echo " - start -- starts new ionic project"
		echo " - shell -- to get access to the shell"
		;;
esac