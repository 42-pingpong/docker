# Makefile Overview

1. make all: 프론트, 백엔드 모두 빌드, 컨테이너화

2. make frontend: 프론트엔드 개발환경, 서버없이 실행.

3. make backend: 백엔드 개발환경, 프론트없이 실행.

# 환경변수

```sh
VOLUMEPATH=마운트하고자하는 호스트 컴퓨터 경로

```

- 예시파일

```sh
VOLUMEPATH=/Users/myukang/goinfre/data

# Database env
POSTGRES_PASSWORD=0000
POSTGRES_USER=pingpongdang

# PGADMIN
PGADMIN_DEFAULT_EMAIL=ping@42seoul.kr
PGADMIN_DEFAULT_PASSWORD=0000

NEST_PORT=8080
REACT_PORT=3000
```
