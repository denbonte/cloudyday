#!/bin/bash

rm -r dicom_alpha
mkdir -p dicom_alpha

#export CLOUDSDK_STORAGE_PROCESS_COUNT=64
#export CLOUDSDK_STORAGE_THREAD_COUNT=16

{ time cat gcs_paths_1000.txt | gcloud --no-user-output-enabled alpha storage cp --read-paths-from-stdin dicom_alpha; } 2>&1 | tee log/alpha_short.log
