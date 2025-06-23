SELECT
    case
        when dateadd(year, datediff(year, date_of_birth, transaction_timestamp), date_of_birth) > transaction_timestamp
            then datediff(year, date_of_birth, transaction_timestamp) - 1
        else datediff(year, date_of_birth, transaction_timestamp)
    end as cardholder_age_at_transaction
FROM {{ ref('stg_transactions') }}