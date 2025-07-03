WITH raw_features AS (
    SELECT
        PARSE_JSON(geospatial_info):features AS features
    FROM {{ source('raw', 'geospatial_raw') }}
),
flattened AS (
    SELECT
        f.value AS feature
    FROM raw_features,
    LATERAL FLATTEN(input => features) f
),
parsed AS (
    SELECT
        feature:"properties"."NAME"::STRING AS state_name,
        feature:"properties"."STUSPS"::STRING AS state_abbr,
        TO_GEOMETRY(feature:"geometry") AS geometry
    FROM flattened
)
SELECT
    state_name,
    state_abbr,
    TO_GEOGRAPHY(ST_SETSRID(geometry, 4326)) AS geography
FROM parsed
    
