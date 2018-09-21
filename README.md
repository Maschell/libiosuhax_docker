The image `wiiulegacy/libiosuhax` on [Docker Hub](https://hub.docker.com/r/wiiulegacy/libiosuhax/) provides a prebuilt library in the `/artifacts` directory. Copy it into your DevkitPPC portlibs folder.  

Example:  
```
COPY --from=wiiulegacy/libiosuhax:0.3 /artifacts $DEVKITPRO/portlibs
```
