SELECT
    transaction_number,
    merchant_latitude,
    merchant_longitude,
    is_fraud
FROM {{ ref('int_transactions_enriched') }}