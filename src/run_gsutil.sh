#!/bin/bash

rm -r dicom_gsutil
mkdir -p dicom_gsutil

{ time cat gcs_paths_1000.txt | gsutil -m cp -Ir dicom_gsutil; } 2>&1 | tee log/gsutil.log
