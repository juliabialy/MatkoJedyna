#!/bin/bash

set -e

AUTHOR1_NAME="juliabialy"
AUTHOR1_EMAIL="jbialy140@gmail.com"

AUTHOR2_NAME="gabrielasolak00"
AUTHOR2_EMAIL="gabrielasolak00@gmail.com"

mkdir -p builds test-history docs design assets minigry

echo "# Matko Jedyna" > README.md
echo "Repozytorium syntetyczne do testów historii commitów." > test-history/log.md

git add .
GIT_AUTHOR_NAME="$AUTHOR1_NAME" GIT_AUTHOR_EMAIL="$AUTHOR1_EMAIL" \
GIT_COMMITTER_NAME="$AUTHOR1_NAME" GIT_COMMITTER_EMAIL="$AUTHOR1_EMAIL" \
GIT_AUTHOR_DATE="2026-02-08T10:15:00" GIT_COMMITTER_DATE="2026-02-08T10:15:00" \
git commit -m "Inicjalizacja repozytorium testowego" --date="2026-02-08T10:15:00"

make_commit () {
  DATE="$1"
  AUTHOR_NAME="$2"
  AUTHOR_EMAIL="$3"
  BRANCH="$4"
  MESSAGE="$5"

  git checkout main >/dev/null 2>&1 || git checkout master >/dev/null 2>&1
  git checkout -B "$BRANCH"

  echo "- $DATE | $AUTHOR_NAME | $BRANCH | $MESSAGE" >> test-history/log.md

  git add .
  GIT_AUTHOR_NAME="$AUTHOR_NAME" GIT_AUTHOR_EMAIL="$AUTHOR_EMAIL" \
  GIT_COMMITTER_NAME="$AUTHOR_NAME" GIT_COMMITTER_EMAIL="$AUTHOR_EMAIL" \
  GIT_AUTHOR_DATE="${DATE}T12:00:00" GIT_COMMITTER_DATE="${DATE}T12:00:00" \
  git commit -m "$MESSAGE" --date="${DATE}T12:00:00"
}

make_commit "2026-02-09" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "design/figma" "Dodanie opisu prototypu w Figmie"
make_commit "2026-02-10" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "design/figma" "Uzupełnienie wyglądu ekranu gry"
make_commit "2026-02-11" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "docs/scenariusz" "Opisanie głównego scenariusza gry"
make_commit "2026-02-12" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "docs/mechaniki" "Dodanie podstawowych mechanik gry"
make_commit "2026-02-13" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/assety-dom" "Opis assetu domu bohaterki"
make_commit "2026-02-14" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/assety-dom" "Poprawa opisu modelu domu"
make_commit "2026-02-16" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/assety-postacie" "Dodanie assetu bohaterki"
make_commit "2026-02-17" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/assety-postacie" "Dodanie assetów rodziny"
make_commit "2026-02-18" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/swiat-miasta" "Opisanie pierwszej wersji miasta"
make_commit "2026-02-20" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/postacie" "Poprawa skali postaci"
make_commit "2026-02-21" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/postacie" "Naprawa ustawienia modeli rodziny"
make_commit "2026-02-23" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/ruch-postaci" "Dodanie podstaw ruchu postaci"
make_commit "2026-02-24" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/ruch-postaci" "Obsługa ruchu klawiaturą"
make_commit "2026-02-25" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/ruch-postaci" "Poprawa płynności poruszania"
make_commit "2026-02-27" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/dialogi" "Dodanie podstaw dialogów"

make_commit "2026-03-02" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/dialogi" "Rozbudowa rozmów między postaciami"
make_commit "2026-03-03" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/dialogi" "Poprawa wyświetlania napisów"
make_commit "2026-03-04" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/interakcje" "Dodanie interakcji z drzwiami"
make_commit "2026-03-05" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/interakcje" "Dodanie interakcji z szafkami"
make_commit "2026-03-06" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/interakcje" "Naprawa wykrywania kliknięć"
make_commit "2026-03-09" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/bariery-swiata" "Dodanie barier świata"
make_commit "2026-03-10" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/podloga" "Poprawa kolizji podłogi"
make_commit "2026-03-11" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/minigra-sprzatanie" "Dodanie minigry sprzątania pokoju"
make_commit "2026-03-12" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/minigra-sprzatanie" "Dodanie napisów do minigry sprzątania"
make_commit "2026-03-13" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/minigra-sprzatanie" "Dodanie sprzątania zabawek do szafki"
make_commit "2026-03-16" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/minigra-sprzatanie" "Poprawa wykrywania zabawek"
make_commit "2026-03-17" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/minigra-sprzatanie" "Dodanie czasu wykonywania zadania"
make_commit "2026-03-18" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/minigra-pieczenie" "Dodanie podstaw minigry pieczenia"
make_commit "2026-03-19" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/minigra-pieczenie" "Dodanie odmierzania czasu pieczenia"
make_commit "2026-03-20" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/kuchnia" "Poprawa modelu kuchni 3D"
make_commit "2026-03-23" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/kuchnia" "Dodanie funkcjonalnych szafek w kuchni"
make_commit "2026-03-24" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/dom" "Rozbudowa domku bohaterki"
make_commit "2026-03-25" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/dom" "Dodanie dodatkowych pomieszczeń"
make_commit "2026-03-26" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/minigra-warzywa" "Dodanie minigry z warzywami"
make_commit "2026-03-27" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/minigra-warzywa" "Dodanie mechaniki pokonywania warzyw"
make_commit "2026-03-30" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/minigra-warzywa" "Poprawa kolizji warzyw"
make_commit "2026-03-31" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/bugfix-v1" "Zbiorczy bugfix v1"

make_commit "2026-04-01" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/bugfix-v1" "Poprawa drobnych błędów interakcji"
make_commit "2026-04-02" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/bugfix-v1" "Naprawa błędów dialogów"
make_commit "2026-04-03" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/bugfix-v1" "Poprawa zachowania minigier"
make_commit "2026-04-04" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/kolizje" "Poprawa barier świata"
make_commit "2026-04-05" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/podloga" "Dopracowanie naprawy podłogi"

make_commit "2026-04-13" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "feature/ekran-startowy" "Dodanie ekranu startowego"
make_commit "2026-04-14" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "feature/ekran-startowy" "Dodanie przycisku rozpoczęcia gry"
make_commit "2026-04-15" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/ekran-startowy" "Poprawa układu ekranu startowego"
make_commit "2026-04-16" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/bugfix-v2" "Zbiorczy bugfix v2"
make_commit "2026-04-17" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/bugfix-v2" "Poprawa błędów minigry pieczenia"
make_commit "2026-04-18" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/bugfix-v2" "Poprawa błędów minigry sprzątania"
make_commit "2026-04-19" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/bugfix-v2" "Poprawa przejść między scenami"
make_commit "2026-04-20" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "docs/podsumowanie" "Dodanie podsumowania wykonanych funkcji"
make_commit "2026-04-21" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "docs/podsumowanie" "Uzupełnienie opisu mechanik"
make_commit "2026-04-22" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "fix/finalne-poprawki" "Finalne poprawki projektu"
make_commit "2026-04-23" "$AUTHOR2_NAME" "$AUTHOR2_EMAIL" "fix/finalne-poprawki" "Porządkowanie struktury projektu"
make_commit "2026-04-24" "$AUTHOR1_NAME" "$AUTHOR1_EMAIL" "release/test-history" "Zamknięcie testowej historii projektu"

git checkout main >/dev/null 2>&1 || git checkout master >/dev/null 2>&1

echo "Gotowe. Teraz wypchnij branche:"
echo "git push --all origin"