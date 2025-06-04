FROM frappe/bench:latest

WORKDIR /home/frappe/frappe-bench

COPY init.sh /home/frappe/init.sh

USER frappe
CMD ["/home/frappe/init.sh"]
