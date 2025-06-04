FROM frappe/bench:latest

WORKDIR /home/frappe/frappe-bench

COPY init.sh /init.sh
RUN chmod +x /init.sh

CMD ["/init.sh"]
