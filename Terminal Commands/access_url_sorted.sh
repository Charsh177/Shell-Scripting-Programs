# Print last 4 frequently access urls count in
# sorted order from /var/log/httpd/access.log

egrep -o 'https?://[^\)"]+' var/log/httpd/access.log | sort | uniq -c | sort -nr | head -4
