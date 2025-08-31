#!/bin/bash
ADDRESS_STRING="1234 Main St, Springfield IL"
EXPECTED_OUTPUT_STRING='"city": "springfield"'
ACTUAL_OUTPUT=$(echo "$ADDRESS_STRING" | address_parser)

if ! echo "$ACTUAL_OUTPUT" | grep -q "$EXPECTED_OUTPUT_STRING"; then
  echo "Failure: expected $EXPECTED_OUTPUT_STRING, got $ACTUAL_OUTPUT"
  exit 1
fi
