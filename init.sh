#!/bin/bash

cd /home/frappe/frappe-bench

# Create site if not already created
if [ ! -d "sites/site1.local" ]; then
  bench new-site site1.local --admin-password admin123 --mariadb-root-password root123 --no-mariadb-socket
  bench get-app erpnext --branch version-15
  bench --site site1.local install-app erpnext
fi

bench start
