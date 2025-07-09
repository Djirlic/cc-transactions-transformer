SELECT
    transaction_weekday AS weekday_group,
    COUNT(*) total_transactions,
    SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END) AS fraudulent_transactions,
    SUM(amount) AS total_amount,
    SUM(CASE WHEN is_fraud THEN amount ELSE 0 END) AS fraud_amount,
    ROUND(
        SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END)::FLOAT / NULLIF(COUNT(*), 0),
        4
    ) AS fraud_rate,
    COALESCE(
        ROUND(
            SUM(CASE WHEN is_fraud THEN amount ELSE 0 END)::FLOAT /
            NULLIF(SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END), 0),
            4
        ),
        0
    ) AS avg_fraud_amount_per_transaction
FROM {{ ref('int_transactions_enriched') }}
GROUP BY transaction_weekday
ORDER BY weekday_group

