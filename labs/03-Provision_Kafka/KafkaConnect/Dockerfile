FROM cnfldemos/kafka-connect-datagen:0.3.2-5.5.0

RUN confluent-hub install --no-prompt debezium/debezium-connector-sqlserver:latest

RUN curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" http://localhost:8083/connectors/ -d @register-sqlserver.json