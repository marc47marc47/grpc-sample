#!/bin/sh
OUT_DIR=$1
PROTO_FILE=$2

if [ $# -lt 2 ]; then
  echo "$0 OUT_DIR PROTO_FILE"
	echo "Parameter required" >2
	exit 1
fi
echo "Begin to generate $PROTO_FILE ..."

ret=0

protoc --go_out=plugins=grpc:$OUT_DIR $PROTO_FILE
if [ $? -ne 0 ]; then
	ret=1
fi

if [ $ret -ne 0 ]; then
	echo "protoc run failed" >&2
	exit 1
fi
echo "Generate successful!"

