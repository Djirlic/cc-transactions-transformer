SELECT
    cardholder_age_at_transaction
FROM {{ ref('int_transactions_age') }}
WHERE cardholder_age_at_transaction < 0 OR cardholder_age_at_transaction > 130