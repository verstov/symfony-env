# symfony-env
Docker Environment for PHP 7.4 &amp; MySQL &amp; NGINX

## Описание
  - Данный репозиторий предназначен для поднятия через docker окружения для разработки в PHP
    - в процессе развертывания поднимается три связанных контейнера.
      - nginx
      - PHP 7.4
      - mysql
      - memcache (опционально, надо раскоментировать для раоты)
     
    ### Структура  
 
    - backup (бекапы базы при старте)
    - data (данные хранимые вне контейнера)
        - mysql
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

