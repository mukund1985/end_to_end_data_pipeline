# end_to_end_data_pipeline

```
Data_Pipeline/
├── Ingestion/
│   ├── ADF/               # Azure Data Factory resources
│   │   ├── Pipelines/     # ADF pipeline definitions
│   │   ├── Datasets/      # ADF datasets
│   │   ├── Linked_Services/ # ADF linked services
│   │   └── Triggers/      # ADF triggers
│   ├── Logs/              # Logs for the ingestion process
│   └── Configs/           # Configuration files for ADF
├── Data_Lake_Gen2/
│   ├── Bronze/            # Raw data storage (Bronze Layer)
│   ├── Silver/            # Cleaned and processed data (Silver Layer)
│   └── Gold/              # Transformed data ready for consumption (Gold Layer)
├── Transformation/
│   ├── Databricks/        # Azure Databricks notebooks and jobs
│   ├── Logs/              # Logs for the transformation process
│   └── Configs/           # Configuration files for Databricks
├── Data_Warehouse/
│   ├── Synapse_Analytics/ # Azure Synapse Analytics resources
│   │   ├── SQL_Pools/     # Dedicated SQL pools
│   │   ├── Spark_Pools/   # Spark pools for big data processing
│   │   └── Pipelines/     # Synapse pipeline definitions
│   └── Logs/              # Logs for the data warehousing process
├── Reporting/
│   ├── PowerBI/           # Power BI reports and dashboards
│   └── Logs/              # Logs for the reporting process
└── Security_Governance/
    ├── Active_Directory/  # Azure Active Directory configurations
    ├── Key_Vault/         # Azure Key Vault secrets and keys
    └── Policies/          # Data policies and governance documents

```
