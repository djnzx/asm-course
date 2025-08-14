### 1. build docker image

```shell
docker compose build
```

### 2. docker look for image built

```shell
docker image ls
```

### 3. docker remove unused
```shell
docker image rm wrong-if-need-to-delete
```

### 4. start container

```shell
docker compose up -d asm32
```

### 5. check if running

```shell
docker ps
```

### 6. jump into docker

```shell
docker exec -ti env-setup-asm32-1 zsh
```