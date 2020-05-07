sleep 90 && curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" http://connect:8083/connectors/ -d @register-sqlserver.json
