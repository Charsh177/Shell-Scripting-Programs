# Find a word "systemd" from all log files in the folder /var/log and print
# the number of occurance more than 0 against each file.

grep -c -R 'systemd' | grep .log | awk '{print $2}'
