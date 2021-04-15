env_var=KAFKA_ZOOKEEPER_CONNECTION_TIMEOUT_MS
KAFKA_FOOBAR_TEST=bla

if [[ $env_var =~ ^KAFKA_ ]]; then
    kafka_name=$(echo "$env_var" | cut -d_ -f2- | tr '[:upper:]' '[:lower:]' | tr _ .)
    echo "$kafka_name - ${!env_var}"
fi

