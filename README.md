# VLDB 2025 supplemental material 
Experiments from our evaluation.
Copyright (c) 2024 TUM. All rights reserved.

The repository is structured as follows:

For each benchmark (Generated, XMark, DBLP, nested TPC-H) we have subdirectories for every used system (Umbra, Trino, DuckDB).
Due to data privacy reasons, we did not include the Twitter dataset.

In every benchmark directory we stored the queries for all three systems in the corresponding subdirectories.

Since Trino needs schema definitions before it can operate on Parquet files, we added additional subdirectories to the Trino directories for the initialization.

## Datasets
The datasets are uploaded to the following Nextcloud folder: https://nextcloud.in.tum.de/index.php/s/tr4BitFcG7iMgfe

## Instructions for Umbra with Github Package:
Run this command in the directory of the required files:
> docker run -it -v ${PWD}:/umbra ghcr.io/alicerey/umbra-npq-release

Inside the Docker container navigate to the umbra directory:
> cd /umbra

Then, run the following command to start the Umbra CLI:
> /usr/local/bin/umbra-sql

Now, run the queries from the Umbra subdirectories. The queries expect the data to be located in the current directory.
