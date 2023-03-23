#!/bin/bash

rm -r dicom_s5cmd
mkdir -p dicom_s5cmd

{ time s5cmd --stat --endpoint-url https://storage.googleapis.com run s3_paths_1000.txt; } 2>&1 | tee log/s5cmd_short.log
