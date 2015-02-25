Пример работы с liquibase параллельно на двух базах
Начальное состояние базы делается без liquibase - имеется в виду уже существующее приложение, а первоначальное портирование схемы из oracle в postgresql делается как-то по-другому.
Потом можно для демонстрации: 

1. сделать из liquibase.properties.template свой liquibase.properties для oracle
2. создать пользователя в oracle (create user litest identified by litest;grant connect, resource, create view to litest;)
3. переключиться на первое состояние git checkout 1
4. выполнить liquibase update (в папку lib в дистрибутиве liquibase надо при этом подложить oracle jdbc драйвер)
5. переключиться на второе состояние git checkout 2
6. выполнить liquibase update
7. пересоздать пользователя или создать нового и обновить liquibase.properties
8. выполнить liquibase update - таки образом контролируем, что из двух связаных веток исходников для базы обе применяются без конфликтов между собой.

То же самое можно выполнить и на postgres (я тут использовал пользователя litest, но при этом дефолтную схему public - думаю, для изменения этого лучше использовать defaultSchemaName в liquibase.properties)
