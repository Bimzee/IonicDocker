## Create running Ionic 4 container

**Build container:**
```bash
$ cd /[folder with Dockerfile]
$ docker build -t ionic4 .
```

**Create alias:**
```bash
$ alias ionic4='docker run -it --rm -v $PWD:/project:rw -p 8100:8100 -p 35729:35729 -p 53703:53703 --name ionic-app ionic4 ionic'
```

**Create app:**
```bash
$ cd ionic4-myapp
$ ionic4 start ionicApp
```

**Serve app at localhost:**
```bash
$ ionic4 serve
```

**Build app:**
```bash
$ ionic4 build
```

**Other Ionic options:**
```bash
$ ionic4
```

**Working with container:**
```bash
# stop container
$ docker stop ionic4
# remove container
$ docker rm ionic4
# enter container
$ docker exec -it ionic4
```

**References**
https://github.com/2009/ionic3-docker#node_version