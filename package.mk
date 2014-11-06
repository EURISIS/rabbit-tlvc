APP_NAME=rabbitmq_tlvc
DEPS=rabbitmq-server rabbitmq-erlang-client
WITH_BROKER_TEST_COMMANDS:=eunit:test(rabbit_tlvc_test,[verbose])
