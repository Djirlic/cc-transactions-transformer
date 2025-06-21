SELECT
    trim(cast(cc_num as string)) as cc_number,
	trim(merchant) as merchant,
	trim(category) as category,
	amt as amount,
	trim(first) as first_name,
	trim(last) as last_name,
	trim(gender) as gender,
	trim(street) as street,
	trim(city) as city,
	trim(state) as state,
	trim(cast(zip as string)) as zip_code,
	lat as latitude,
	long as longitude,
	city_pop as city_population,
	trim(job) as job,
	dob as date_of_birth,
	trim(trans_num) as transaction_number,
	merch_lat as merchant_latitude,
	merch_long as merchant_longitude,
	cast(is_fraud as boolean) as is_fraud,
	to_timestamp_ntz(trans_date_trans_time / 1000000) as transaction_timestamp
FROM {{ source('raw', 'transactions_raw') }}
WHERE amt >= 0
AND dob < CURRENT_DATE()