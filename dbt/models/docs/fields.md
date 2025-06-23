{% docs transaction_weekday %}
    
3-letter day abbreviation from the timestamp: 

| abbreviation   | weekday      |
|----------------|--------------|
| Sun            | Sunday       |
| Mon            | Monday       |
| Tue            | Tuesday      |
| Wed            | Wednesday    |
| Thu            | Thursday     |
| Fri            | Friday       |
| Sat            | Saturday     |

{% enddocs %}

{% docs cc_number %}
Credit card number of the cardholder.
{% enddocs %}

{% docs merchant %}
Name of the merchant where the transaction occurred.
{% enddocs %}

{% docs category %}
Business category of the merchant.
{% enddocs %}

{% docs amount %}
Transaction amount in USD.
{% enddocs %}

{% docs first_name %}
First name of the cardholder.
{% enddocs %}

{% docs last_name %}
Last name of the cardholder.
{% enddocs %}

{% docs gender %}
Gender of the cardholder ('M' for male, 'F' for female).
{% enddocs %}

{% docs street %}
Street of the cardholder's address.
{% enddocs %}

{% docs city %}
City of the cardholder's address.
{% enddocs %}

{% docs state %}
US state abbreviation of the cardholder's address.
{% enddocs %}

{% docs zip_code %}
Zip code of the cardholder's address.
{% enddocs %}

{% docs latitude %}
Latitude of the cardholder's location.
{% enddocs %}

{% docs longitude %}
Longitude of the cardholder's location.
{% enddocs %}

{% docs city_population %}
Population of the cardholder's city.
{% enddocs %}

{% docs job %}
Job title of the cardholder.
{% enddocs %}

{% docs date_of_birth %}
Date of birth of the cardholder.
{% enddocs %}

{% docs transaction_number %}
Unique transaction identifier.
{% enddocs %}

{% docs merchant_latitude %}
Latitude of the merchant's location.
{% enddocs %}

{% docs merchant_longitude %}
Longitude of the merchant's location.
{% enddocs %}

{% docs is_fraud %}
Boolean flag indicating whether the transaction was fraudulent.
{% enddocs %}

{% docs transaction_timestamp %}
Timestamp when the transaction occurred, derived from raw microsecond field.
{% enddocs %}

{% docs transaction_date %}
The date part of the transaction timestamp.
{% enddocs %}

{% docs transaction_hour %}
Hour of the transaction (0-23).
{% enddocs %}

{% docs is_weekend %}
Boolean indicating whether the transaction occurred on a weekend.
{% enddocs %}

{% docs is_night_transaction %}
Boolean indicating whether the transaction occurred during the night (before 6 AM or after 10 PM).
{% enddocs %}

{% docs cardholder_age_at_transaction %}
Age of cardholder (in full years) at the time of transaction.
{% enddocs %}