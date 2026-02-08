#!/bin/bash

AUTHOR1_NAME="juliabialy"
AUTHOR1_EMAIL="jbialy140@gmail.com"

AUTHOR2_NAME="gabrielasolak00"
AUTHOR2_EMAIL="gabrielasolak00@gmail.com"

echo "start" > test-history/log.md

make_commit () {
  DATE="$1"
  AUTHOR_NAME="$2"
  AUTHOR_EMAIL="$3"
  MESSAGE="$4"

  echo "$DATE - $MESSAGE" >> test-history/log.md

  git add .
  GIT_AUTHOR_NAME="$AUTHOR_NAME" GIT_AUTHOR_EMAIL="$AUTHOR_EMAIL" \
  GIT_COMMITTER_NAME="$AUTHOR_NAME" GIT_COMMITTER_EMAIL="$AUTHOR_EMAIL" \
  GIT_AUTHOR_DATE="${DATE}T12:00:00" GIT_COMMITTER_DATE="${DATE}T12:00:00" \
  git commit -m "$MESSAGE" --date="${DATE}T12:00:00"
}

make_commit "2026-02-08" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "Start historii"
make_commit "2026-02-10" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "Dodanie scenariusza"
make_commit "2026-02-12" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "Mechanika gry"
make_commit "2026-02-15" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "Assety domu"
make_commit "2026-02-18" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "Ruch postaci"
make_commit "2026-02-20" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "Dialogi"
make_commit "2026-02-25" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "Interakcje"
make_commit "2026-03-01" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "Minigra sprzątanie"
make_commit "2026-03-05" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "Minigra pieczenie"
make_commit "2026-03-10" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "Minigra warzywa"
make_commit "2026-03-15" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "Bugfix v1"
make_commit "2026-03-20" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "Bugfix v2"
make_commit "2026-04-01" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "Ekran startowy"
make_commit "2026-04-13" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "Poprawki końcowe"
make_commit "2026-04-24" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "Zamknięcie projektu"
