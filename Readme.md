# Makefile Overview

1. make all: 프론트, 백엔드 모두 빌드, 컨테이너화

2. make frontend: 프론트엔드 개발환경, 서버없이 실행.

3. make backend: 백엔드 개발환경, 프론트없이 실행.

# 사용

<b>VOLUMEPATH에서 원하는 에디터로 작업을 수행합니다.</b>

<b>작업 이후 주기적인 커밋을 추천합니다.</b>

# 환경변수

<b>폴더의 root에 .env를 위치시킵니다.</b>

```sh
VOLUMEPATH=마운트하고자하는 호스트 컴퓨터 경로
```

- 예시파일

```sh
VOLUMEPATH=/Users/myukang/goinfre/data
42APIKEY=
REDIRECT42=
CLIENT42=

#JWT

JWT_ACCESS_SECRET=secret
JWT_REFRESH_SECRET=secret2


# Database env
POSTGRES_DBHOST=postgres
POSTGRES_DBPORT=5432
POSTGRES_PASSWORD=0000
POSTGRES_USER=pingpongdang
POSTGRES_DB=pingpong

# PGADMIN
PGADMIN_DEFAULT_EMAIL=ping@42seoul.kr
PGADMIN_DEFAULT_PASSWORD=0000

NEST_PORT=10002
REACT_PORT=10003
```

# ERR

1. PORT는 macOS기준 7000, 5000등 특정 포트는 이미 OS에서 사용중이므로, 사용하실 PORT가 이미 bind되었다는 오류 발생 시, `lsof -i:10002`등으로 다른 프로세스가 사용중인지 확인하고 수정하시면됩니다.

2. host에서 npm install시, 컨테이너 내부에서 install된 패키지를 못찾는 버그가 있었고, 이는 container를 stop했다가 다시 run....하시면됩니다.

3. 각 스크립트에서 git checkout을 수행했었는데, 특정한 경우에 local에서 작업중이던 branch를 바꿔버리는 경우가 있어서 checkout하지 않도록 수정했습니다.
