{% docs state_abbr %}
    
2-letter state abbreviation from U.S. states from GeoJSON:

| abbreviation  | state                                          |
|---------------|------------------------------------------------|
| WV            | West Virginia                                  |
| FL            | Florida                                        |
| IL            | Illinois                                       |
| MN            | Minnesota                                      |
| MD            | Maryland                                       |
| RI            | Rhode Island                                   |
| ID            | Idaho                                          |
| NH            | New Hampshire                                  |
| NC            | North Carolina                                 |
| VT            | Vermont                                        |
| CT            | Connecticut                                    |
| DE            | Delaware                                       |
| NM            | New Mexico                                     |
| CA            | California                                     |
| NJ            | New Jersey                                     |
| WI            | Wisconsin                                      |
| OR            | Oregon                                         |
| NE            | Nebraska                                       |
| PA            | Pennsylvania                                   |
| WA            | Washington                                     |
| LA            | Louisiana                                      |
| GA            | Georgia                                        |
| AL            | Alabama                                        |
| UT            | Utah                                           |
| OH            | Ohio                                           |
| TX            | Texas                                          |
| CO            | Colorado                                       |
| SC            | South Carolina                                 |
| OK            | Oklahoma                                       |
| TN            | Tennessee                                      |
| WY            | Wyoming                                        |
| HI            | Hawaii                                         |
| ND            | North Dakota                                   |
| KY            | Kentucky                                       |
| VI            | United States Virgin Islands                   |
| MP            | Commonwealth of the Northern Mariana Islands   |
| GU            | Guam                                           |
| ME            | Maine                                          |
| NY            | New York                                       |
| NV            | Nevada                                         |
| AK            | Alaska                                         |
| AS            | American Samoa                                 |
| MI            | Michigan                                       |
| AR            | Arkansas                                       |
| MS            | Mississippi                                    |
| MO            | Missouri                                       |
| MT            | Montana                                        |
| KS            | Kansas                                         |
| IN            | Indiana                                        |
| PR            | Puerto Rico                                    |
| SD            | South Dakota                                   |
| MA            | Massachusetts                                  |
| VA            | Virginia                                       |
| DC            | District of Columbia                           |
| IA            | Iowa                                           |
| AZ            | Arizona                                        |

{% enddocs %}

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

{% docs age_group %}
    
One of the following age groups: 

| age group   |
|----------------|
| <18           |
| 18-25          |
| 26-35          |
| 36-50          |
| 51-65          |
| \>66           |

{% enddocs %}

{% docs merchant_state %}
Name of the U.S. state derived from the merchant's geographic coordinates. 
'Unknown' if there was no matching state.
{% enddocs %}

{% docs merchant_state_abbr %}
Two-letter abbreviation of the U.S. state in which the merchant is located.
'UNK' if there was no matching state.
{% enddocs %}

{% docs is_merchant_location_valid %}
Boolean flag indicating whether the merchant's location matched a known US state.
{% enddocs %}