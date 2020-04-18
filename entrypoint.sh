#!/bin/bash

cd /project/target

# Compile
if make > /tmp/compilation_logs 2>&1; then
	echo "TECHIO> redirect-streams \"Test results\""

	# Execute test
	"$@"
else
	echo "TECHIO> redirect-streams \"Compilation logs\""
	cat /tmp/compilation_logs
	echo "TECHIO> success false"
fi
