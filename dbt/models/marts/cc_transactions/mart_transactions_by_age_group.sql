SELECT
    age_group,
    COUNT(*) AS total_transactions,
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
FROM (
    SELECT
    *,
    CASE
        WHEN cardholder_age_at_transaction < 18 THEN '<18'
        WHEN cardholder_age_at_transaction BETWEEN 18 AND 25 THEN '18-25'
        WHEN cardholder_age_at_transaction BETWEEN 26 AND 35 THEN '26-35'
        WHEN cardholder_age_at_transaction BETWEEN 36 AND 50 THEN '36-50'
        WHEN cardholder_age_at_transaction BETWEEN 51 AND 65 THEN '51-65'
        ELSE '>66'
        END AS age_group
    FROM {{ ref('int_transactions_enriched') }}
)
GROUP BY age_group
ORDER BY age_group