# scalus
patch tunsafe to work with random wireguard peers.

```
invoke-static {v1}, Lcom/myfile/myapp/MyFile;->getRandomPeer(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
```
patch nord ip
```
invoke-static {v1}, Lcom/myfile/MyIP;->getNextIPV4Address(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
```
binary file ->  release
