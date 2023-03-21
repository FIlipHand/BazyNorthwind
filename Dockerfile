FROM mcr.microsoft.com/mssql/server:2022-latest

WORKDIR /usr/src/app

ENV SA_PASSWORD Student@1234
ENV ACCEPT_EULA Y

COPY mssql_all.sql mssql_all.sql
COPY setup_database.sh setup_database.sh
COPY entrypoint.sh entrypoint.sh

EXPOSE 1433

CMD /bin/bash ./entrypoint.sh
