#!/bin/bash

# 사용법: ./make_algorithm.sh 주제 파일이름
# 예시: ./make_algorithm.sh graph bfs

TOPIC=$1
FILENAME=$2

# 입력 체크
if [ -z "$TOPIC" ] || [ -z "$FILENAME" ]; then
  echo "사용법: $0 [주제] [파일명]"
  echo "예시: $0 graph bfs"
  exit 1
fi

# 폴더 생성 (없으면)
mkdir -p algorithms/$TOPIC

# 파일 생성
TARGET="algorithms/$TOPIC/${FILENAME}.java"
cp template.java "$TARGET"

# 클래스 이름을 파일명에 맞게 수정
sed -i "s/AlgorithmTemplate/${FILENAME^}/" "$TARGET"

echo "✅ 새 알고리즘 파일 생성: $TARGET"
