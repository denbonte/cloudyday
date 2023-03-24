# Cloud Download Benchmarks 🌦️

Dummy benchmarking for common Google Storage Buckets download tools (`s5cmd`, `gsutil`, `gcloud storage`).


# Running the Benchmarking

## Google Colab
If you don't want to install or configure anything on your local system, check out the benchmarking in this Colab notebook 👇

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/denbonte/cloudyday/blob/main/notebooks/download_benchmark.ipynb)

## Local Node
To run the benchmark on your local node, you will need to install Google's `gsutil` and `gcloud`, both part of the `google-cloud-sdk` that can be installed (and configured) following [this guide](https://cloud.google.com/storage/docs/gsutil_install).

To install `s5cmd`, follow the instructions in the [official repository](https://github.com/peak/s5cmd) or check out how we did it in [our Colab notebook](https://github.com/denbonte/cloudyday/blob/main/notebooks/download_benchmark.ipynb):

```
wget https://github.com/peak/s5cmd/releases/download/v2.0.0/s5cmd_2.0.0_Linux-64bit.tar.gz
mkdir -p s5cmd && tar zxf s5cmd_2.0.0_Linux-64bit.tar.gz -C s5cmd
cp s5cmd/s5cmd /usr/bin && rm s5cmd_2.0.0_Linux-64bit.tar.gz
```

For a quick introduction on how to run `s5cmd`, you can check out the tutorial at [this webpage](https://learn.canceridc.dev/data/downloading-data/downloading-data-with-s5cmd).

The very simple scripts used for benchmarking are found in the `src` folder. You might need to change a couple of paths for this to work.

# Data

The manifestos specifying the data to pull can be found in the `data` folder.

The benchmark was run using, as a test case, a number of DICOM files hosted by the [Imaging Data Commons](https://portal.imaging.datacommons.cancer.gov/) (IDC) Google Storage Buckets. Similarly, the Colab notebook fetches data from the IDC buckets following the instructions found in the [IDC Tutorials](https://github.com/ImagingDataCommons/IDC-Tutorials).

If you want to learn more about the Imaging Data Commons, you can do so starting from their [documentation page](https://learn.canceridc.dev/).

# Notes

ChatGPT suggested "cloudy with a chance of downloads" as a repo name, but I felt like the name was too long.
