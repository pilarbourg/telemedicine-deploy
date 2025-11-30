#!/bin/bash

DB_NAME="telemedicine_local"
DB_USER="pilarbourg"

if [ ! -f "telemedicine_local.sql" ]; then
    echo "Error: telemedicine_local.sql not found!"
    exit 1
fi

echo "Creating database $DB_NAME..."
createdb -U "$DB_USER" "$DB_NAME"

echo "Restoring database..."
psql -U "$DB_USER" -d "$DB_NAME" -f telemedicine_local.sql

echo "Restore complete!"