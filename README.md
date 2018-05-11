## Create running Ionic 3 container

**Build container:**
```bash
$ cd /[folder with Dockerfile]
$ docker build -t ionic3 .
```

**Create alias:**
```bash
$ alias ionic3="docker run -it --rm -v $PWD:/project:rw -p 8100:8100 -p 35729:35729 -p 53703:53703 --name ionic-app ionic3 ionic"
```

**Create app:**
```bash
$ cd ionic3-myapp
$ ionic3 start phabricator-client
```

**Serve app at localhost:**
```bash
$ ionic3 serve
```

**Build app:**
```bash
$ ionic3 build
```

**Other Ionic options:**
```bash
$ ionic3
```

**Working with container:**
```bash
# stop container
$ docker stop ionic3
# remove container
$ docker rm ionic3
# enter container
$ docker exec -it ionic3
```

**References**
https://github.com/2009/ionic3-docker#node_version