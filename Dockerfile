FROM frappe/bench:latest

WORKDIR /home/frappe/frappe-bench

RUN bench get-app erpnext --branch version-15 \
 && bench new-site site1.local --admin-password admin123 --mariadb-root-password root123 \
 && bench --site site1.local install-app erpnext

CMD ["bench", "start"]
