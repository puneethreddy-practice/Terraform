resource=$(terraform state list aws_instance.test_instnce)
if [ -z "$resource" ]
then
echo "Resource Doesn't Exist"
else
echo "$resource"
fi


