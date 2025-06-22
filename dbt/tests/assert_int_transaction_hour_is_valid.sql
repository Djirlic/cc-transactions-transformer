SELECT
    transaction_hour
FROM {{ ref('int_transactions_time') }}
WHERE transaction_hour NOT BETWEEN 0 AND 23