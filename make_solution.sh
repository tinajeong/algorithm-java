#!/bin/bash

# 사용법: ./make_solution.sh 사이트명 문제파일명
# 예시: ./make_solution.sh baekjoon 1260-DFS와BFS

SITE=$1
PROBLEM=$2

# 입력 확인
if [ -z "$SITE" ] || [ -z "$PROBLEM" ]; then
  echo "사용법: $0 [사이트명] [문제파일명]"
  echo "예시: $0 baekjoon 1260-DFS와BFS"
  exit 1
fi

# 폴더 없으면 생성
mkdir -p solved/$SITE

# 템플릿을 문제 파일로 복사
cp template.md solved/$SITE/$PROBLEM.md

echo "✅ 새 문제 파일 생성: solved/$SITE/$PROBLEM.md"

