SELECT
    s.*,
    t.transaction_date,
    t.transaction_hour,
    t.transaction_weekday,
    t.is_weekend,
    t.is_night_transaction,
    a.cardholder_age_at_transaction
FROM {{ ref('stg_transactions') }} s
LEFT JOIN {{ ref('int_transactions_time') }} t
    ON s.transaction_number = t.transaction_number
LEFT JOIN {{ ref('int_transactions_age') }} a
    ON s.transaction_number = a.transaction_number