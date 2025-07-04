SELECT
    t.transaction_number,
    s.state_name AS merchant_state,
    s.state_abbr AS merchant_state_abbr
FROM {{ ref('stg_transactions') }} t
JOIN {{ ref('stg_state_boundaries') }} s
    ON ST_CONTAINS(
        s.geography, 
        TO_GEOGRAPHY(ST_POINT(t.merchant_longitude, t.merchant_latitude))
    )


























dbt
/
models
/
intermediate
/
cc_transactions
/
int_transactions_merchant_location.sql

Save
1345627
SELECT
    t.transaction_number,
    s.state_name AS merchant_state,
    s.state_abbr AS merchant_state_abbr
FROM {{ ref('stg_transactions') \}\} t
JOIN {{ ref('stg_state_boundaries') \}\} s
    ON ST_CONTAINS(s.geography, TO_GEOGRAPHY(ST_POINT(t.merchant_longitude, t.merchant_latitude)))

Preview

Compile

Build

Format
Results
$0