#!/usr/bin/env bash

# Could have used pg_isready aswell..

false
while [ $? -ne 0 ]; do
    psql -v ON_ERROR_STOP=1 -d $POSTGRES_DB -U $POSTGRES_USER -c "ALTER USER $POSTGRES_USER WITH SUPERUSER PASSWORD '$POSTGRES_PASSWORD';"
    psql -v ON_ERROR_STOP=1 -d $POSTGRES_DB -U $POSTGRES_USER -c "GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DB TO $POSTGRES_USER;"
    if (( $? == 0 ))
        then
            echo "Password for the DB: $POSTGRES_DB with user : $POSTGRES_USER is set"
    fi
    psql -v ON_ERROR_STOP=1 -d $POSTGRES_DB -U $POSTGRES_USER -c "select 1"
done

