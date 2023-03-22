# BAZY DANYCH NORTHWIND

## INSTALACJA DOCKERA
Tutaj już każdy musi sobie poradzić we własnym zakresie. Każdy ma inny system, architekturę CPU itd. Dla kogoś kto zaczyna polecam Docker Desktop.

## Uruchamianie
```
docker-compose up
```
- dodać flagę `--build` jeśli chce się przebudować kontener
- dodać flagę `-d` jeśli chce się uruchomić kontenery w tle

## Koniec pracy
```
docker-compose down
```
Jeśli `up` zostało uruchomione bez flagi `-d` należy wykonać komendę z innego terminala, jednak w tym samym folderze. `CRTL + C` również zamknie kontener.

## Połączenie do baz
- Postgres
  - user: postgres
  - password: postgres
  - nazwa bazy: northwind
  - port: 55432
- MSSQL
  - user: SA
  - password: Student@1234
  - nazwa bazy: master
  - port: 11433
- SQLite
  - wystarczy podać ścieżkę do pliku northwind.sqlite
  - w moim przypadku (używając DataGrip) po dodaniu bazy, muszę kliknąć PPM w połączenie -> Properties i ponownie ustalić ścieżkę, aby baza działała poprawnie. Nie wiem dlaczego tak się dzieję, jak ktoś wie niech da znać i poprawimy tootorial

Po uruchomieniu w folderze pojawią się nowe foldery. **Nie usuwamy ich!!**. Sprawiają one że po wyłączeniu kontenerów, zmiany w bazach zostają zapisane. 

## Przebudowa
Na windowsie śmiga wszystko git, jednak Linux respektuje permisje plików, więc uruchomienie z flagą `--build` wymaga użycie `sudo`. Nie jest to idealne, jednak sprawia, że po prostu to działa