SELECT
    s.*,
    t.transaction_date,
    t.transaction_hour,
    t.transaction_weekday,
    t.is_weekend,
    t.is_night_transaction,
    a.cardholder_age_at_transaction,
    COALESCE(m.merchant_state, 'Unknown') AS merchant_state,
    COALESCE(m.merchant_state_abbr, 'UNK') AS merchant_state_abbr,
    (m.merchant_state IS NOT NULL) AS is_merchant_location_valid
FROM {{ ref('stg_transactions') }} s
LEFT JOIN {{ ref('int_transactions_time') }} t
    ON s.transaction_number = t.transaction_number
LEFT JOIN {{ ref('int_transactions_age') }} a
    ON s.transaction_number = a.transaction_number
LEFT JOIN {{ ref('int_transactions_merchant_location') }} m
    ON s.transaction_number = m.transaction_number