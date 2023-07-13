# Makefile Overview

1. make all: 프론트, 백엔드 모두 빌드, 컨테이너화

2. make frontend: 프론트엔드 개발환경, 서버없이 실행.

3. make backend: 백엔드 개발환경, 프론트없이 실행.

# 환경변수

<b>폴더의 root에 .env를 위치시킵니다.</b>

```sh
VOLUMEPATH=마운트하고자하는 호스트 컴퓨터 경로
```

- 예시파일

```sh
VOLUMEPATH=/Users/myukang/goinfre/data
42APIKEY=
COOKIE_SECRET=secret

# Database env
POSTGRES_DBHOST=postgres
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

- PORT는 macOS기준 7000, 5000등 특정 포트는 이미 OS에서 사용중이므로, 사용하실 PORT가 이미 bind되었다는 오류 발생 시, `lsof -i:10002`등으로 다른 프로세스가 사용중인지 확인하고 수정하시면됩니다.
