# 💳 Credit Card Transactions Transformer

This repository contains the dbt models used to transform raw credit card transaction data into clean, analytical tables using the **medallion architecture** (bronze → silver → gold). The data is stored and transformed in Snowflake.

The project is part of my [AWS & Snowflake Batch Processing Pipeline for Credit Card Transactions](https://github.com/Djirlic/fraud-detection-e2e-pipeline).

---

## 🔧 Tech Stack

- **dbt Cloud** (or CLI-compatible)
- **Snowflake** as data warehouse

---

## 🏗️ Data Model Overview

This dbt project follows a **layered approach**:

- **Bronze Layer**: Raw data ingested from Snowpipe (credit card transactions) and U.S. GeoData
- **Silver Layer**: Cleaned and enriched data
  - Adds merchant location info (based on U.S. GeoData)
  - Calculates age of cardholder at time of transaction
  - Calculates the daytime of the transaction
  - Retrieves the weekday of the transaction
- **Gold Layer**: Aggregated tables for analysis and dashboards
  - Example: Fraud by age group, fraud by time of day, state-level metrics

Data lineage and documentation is available via `dbt docs generate`.

Data lineage and tests cover all sources and all models up to the gold layer.

---

## 🚀 How to Run

This project is developed and deployed via **dbt Cloud**. All transformations are triggered through scheduled or manual jobs within the dbt Cloud interface, connected to a Snowflake data warehouse. 
In my current setup the jobs are actually triggered with Airflow.

> [!WARNING]  
> Running this project locally is possible but not officially supported. It requires access to a pre-configured Snowflake instance with the required schemas and source data already loaded.

If you're using dbt Cloud:
1. Connect your Snowflake warehouse
2. Clone this repository
3. Set your environment variables and target schema
4. Run or schedule your dbt job

Please refer to the main project documentation for upstream data ingestion and warehouse setup. If you need more information, feel free to reach out.
