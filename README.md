# symfony-env
Docker Environment for PHP 7.4 &amp; MySQL &amp; NGINX &amp; postgresql 12 &amp; redis 5

## Описание
  - Данный репозиторий предназначен для поднятия через docker окружения для разработки в PHP
    - в процессе развертывания поднимается три связанных контейнера.
      - nginx
      - PHP 7.4
      - mysql 5.7
      - postgresql 12
      - redis 5
      - memcache (опционально, надо раскоментировать для раоты)
     
    ### Структура  
 
    - backup (бекапы базы при старте)
    - data (данные хранимые вне контейнера)
        - mysql
        - postgresql
    - etc (файлы конфигов)
        - mysql
        - php 
        - nginx (пример виртуального хоста приложен, новые именовать host-name.conf)
    - logs (логи nginx)
    - www (в данную дирректорию надо разместить проекты которые будут работать в данном окружении)
    - docker-compose.yaml (настройки контейнеров)

##### ВАЖНО
 - Запуск - docker-compose up (-d фоново)
 - Остановка - docker-compose down (при работе в фоне) / Ctrl + C
 - на Mac Os для указания в настройках mysqli connect в своем приложении имя хоста mysql указывать как "docker.for.mac.host.internal"

##### Автор
 - **Andrey Verstov** - [verstov](https://github.com/verstov)

