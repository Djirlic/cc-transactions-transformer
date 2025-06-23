SELECT
    transaction_number,
    date(transaction_timestamp) as transaction_date,
    date_part('hour', transaction_timestamp) as transaction_hour,
    to_varchar(transaction_timestamp, 'DY') AS transaction_weekday,
    case
        when extract(dayofweek from transaction_timestamp) IN (0,6) then true
        else false
    end as is_weekend,
    case
        when extract(hour from transaction_timestamp) < 6 or extract(hour from transaction_timestamp) >= 22 then true
        else false
    end as is_night_transaction
FROM {{ ref('stg_transactions') }}