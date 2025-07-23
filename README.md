# 💳 Credit Card Transactions Transformer

This repository contains the dbt models used to transform raw credit card transaction data into clean, analytical tables using the **medallion architecture** (bronze → silver → gold). The data is stored and transformed in Snowflake.

## 🧱 Project Overview

This dbt project is part of a larger end-to-end data pipeline built to simulate a real-world **fraud detection system** using cloud-native tools like AWS, Snowflake, Airflow, and Streamlit.
👉 [AWS & Snowflake Batch Processing Pipeline for Credit Card Transactions](https://github.com/Djirlic/fraud-detection-e2e-pipeline).

## 🔧 Tech Stack

- **dbt Cloud** (or CLI-compatible)
- **Snowflake** as data warehouse

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

## 🚀 How to Run

This project is developed and deployed via **dbt Cloud**. All transformations are triggered through scheduled or manual jobs within the dbt Cloud interface, connected to a Snowflake data warehouse. 
In my current setup the jobs are actually triggered with Airflow.

> [!WARNING]  
> Local execution is possible via dbt CLI but requires access to a properly configured Snowflake environment with source data already present.

### dbt Cloud
1. Clone this repo into your dbt Cloud project
2. Connect your Snowflake warehouse
3. Set the correct target schema/environment variables
4. Run or schedule the job via the dbt Cloud UI

Please refer to the main project documentation for upstream data ingestion and warehouse setup. If you need more information, feel free to reach out.

## ✅ Testing & Documentation

- All models are covered by **dbt tests** (e.g., `not_null`, `unique`, and conditional checks).
- Full **model documentation** is available via `dbt docs generate`.
- Model descriptions are embedded in YAML files for each layer.

## 📈 Example Use Cases

Some of the questions this model enables:

- Which age group is most likely to experience fraud?
- When does fraud most often occur (time of day, day of week)?
- Which U.S. states are most affected by fraud?

These gold-layer outputs are consumed by a **Streamlit dashboard** for visual analysis.

## 🛠️ Future Improvements

- Introduce **incremental models** to improve performance at scale.
- Extend enrichment with **demographic or merchant category data**.
- Add snapshotting and auditing for historical model comparison.
