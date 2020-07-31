# Reusable-PostgreSQL-Container

To use AS-IS with the current PostgreSQL version 9.5 please do the below,

1. Clone this repo & change directory to it.

2. Follow steps 3 & 4 below.

3. Either use your own database directory from your local Dev/QA setup or download the restored/recovered external database directory that you need to investigate to your local setup.

4. Replace the database empty directory here with the one from step 3 above.

5. Edit the file "db-docker-compose-1.yml" to replace this string "\<PATH-TO-EXTRACTED-DIR\>" with the path to the current directory.

6. Optionally, edit the file "db-docker-compose-1.yml" to replace the following env variables to your choosing based on your case, "POSTGRES_USER", "POSTGRES_DB" & "POSTGRES_PASSWORD". The database port can also be changed by changing the string "15432" with your choosing. In addition, declare any other services that needs to be brought up along with the db in the same file.

7. Run, "docker-compose -f db-docker-compose-1.yml up -d". The database would now be available to connect on port 15432 by default unless changed.

==================

To use with another PostgreSQL version other than version 9.5 please do the below,

1. Clone this repo & change directory to it.

2. Edit the file "Dockerfile" to replace the string "9.5" with whatever version needed, say "12.3".

3. Edit the file "db-docker-compose.yml" to replace this string "\<PATH-TO-EXTRACTED-DIR\>" with the path to the current directory in two places.

4. Run, "docker-compose -f db-docker-compose.yml build".

5. Perform steps 3 to 7 from above.
