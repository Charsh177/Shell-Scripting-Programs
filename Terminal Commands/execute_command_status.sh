# Execute command "hello" and "ls" and check its execution status and
# print whether command executed successful or not.

list=`ls`
status=$?

if [ $status -eq 0 ]
then
	echo "ls command executed successfully..."
else
	echo "ls command  not executed successfully"
fi

list=`hello`
status=$?

if [ $status -eq 0 ]
then
	echo "hello command executed successfully..."
else
	echo "hello command not executed successfully"
fi
