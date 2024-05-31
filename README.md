# Supplemental material 
Experiments from our evaluation.

The repository is structured as follows:

For each benchmark (Synthetic, XMark, DBLP, nested TPC-H) we have subdirectories for every used system (Umbra, Trino, DuckDB, AsterixDB).
Due to data privacy reasons, we did not include the Twitter dataset.

In every benchmark directory we stored the queries for all three systems in the corresponding subdirectories.

Since Trino and AsterixDB need schema definitions before they can operate on Parquet files, we added additional subdirectories to those directories for the initialization.

## Datasets
The datasets are uploaded to the following Google Drive folder: [Google Drive Link](https://drive.google.com/file/d/1UqwFbuywMErdgau1_JWN8QwzjMwpXle4/view?usp=sharing)

## Instructions for Umbra with Github Package:
Pull the docker image:
> docker pull ghcr.io/alicerey/umbra-npq-release:9363c6f11

Run this command in the directory of the required files:
> docker run --privileged -it -v ${PWD}:/umbra ghcr.io/alicerey/umbra-npq-release:9363c6f11

Inside the Docker container navigate to the directory:
> cd /umbra

Then, run the following command to start the CLI:
> /usr/local/bin/umbra-sql

## Run Script
The queries expect the data to be located in the current directory.
