#!/bin/bash

rm -r dicom_gstorage
mkdir -p dicom_gstorage

export CLOUDSDK_STORAGE_PROCESS_COUNT=256
#export CLOUDSDK_STORAGE_THREAD_COUNT=16

{ time cat gcs_paths_1000.txt | gcloud --no-user-output-enabled storage cp --read-paths-from-stdin dicom_gstorage; } 2>&1 | tee log/gstorage_short.log
