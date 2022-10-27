service rabbitmq-server start
rabbitmqctl add_user $RABBITMQ_USER $RABBITMQ_PASS
rabbitmqctl set_user_tags $RABBITMQ_USER administrator
rabbitmqctl set_permissions -p / $RABBITMQ_USER ".*" ".*" ".*"
rabbitmq-plugins enable rabbitmq_management
service rabbitmq-server stop

mkdir helloworld
mv *.js helloworld
cd helloworld
npm init -f
npm i amqplib

exec rabbitmq-server