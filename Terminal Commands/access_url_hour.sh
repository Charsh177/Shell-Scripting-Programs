egrep -o 'https?://[^\)"]+' var/log/httpd/access.log | sort | uniq -c | sort -nr| head -4
