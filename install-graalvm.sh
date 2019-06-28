#!/bin/bash
if [ ! -f "$GRAALVM_HOME/bin/java" ]; then
	wget https://github.com/oracle/graal/releases/download/vm-19.0.2/graalvm-ce-linux-amd64-19.0.2.tar.gz -O /opt/graalvm-ce-linux-amd64-19.0.2.tar.gz
	tar -xzf /opt/graalvm-ce-linux-amd64-19.0.2.tar.gz -C /opt
	rm /opt/graalvm-ce-linux-amd64-19.0.2.tar.gz
	$GRAALVM_HOME/bin/gu install native-image
fi
