FROM frappe/bench:latest

WORKDIR /home/frappe/frappe-bench

RUN bench init --skip-redis-config-generation --frappe-branch version-15 frappe-bench && \
    cd frappe-bench && \
    bench get-app erpnext --branch version-15 && \
    bench new-site site1.local --admin-password admin123 --mariadb-root-password root123 --install-app erpnext

CMD ["bench", "start"]
