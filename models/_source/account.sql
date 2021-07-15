
{{
    config(
        materialized = 'table'
    )
}}
select
  ID as COPYID,
  NAME as COPYNAME
from
    {{ source('snowflake', 'DBT_SF_ACCOUNTS') }}