# docker-boinc-client
Boinc client docker image

## How to run this image 

```
docker run -d \
    --device=/dev/input/mice \
    --net=host \
    -e PROJECTURL="http://..." \
    -e ACCOUNTKEY="XXXXX" \
    infrabuilder/boinc-client
```

The "--device=/dev/input/mice" goal is to provide mice directory to container to avoid boinc error for inexistent folder

The "--net=host" flag is useful to retrieve the docker host hostname for boinc units statistics (like worldcommunitygrid)