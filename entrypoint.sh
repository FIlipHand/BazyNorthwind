#!/usr/bin/env bash
set -m
/opt/mssql/bin/sqlservr & /bin/bash setup_database.sh
fg
