
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with customer_orders as (
   select * 

   from snowflake_test.DBT_SF_ACCOUNTS
)

-- with source_data as (

--     select 1 as id
--     union all
--     select null as id

-- )

-- select *
-- from source_data

-- /*
--     Uncomment the line below to remove records with null `id` values
-- */

-- -- where id is not null



-- select
--   *
-- from stage_customer

-- with snowflake_source as (
--   select * from {{ source('PUBLIC', 'DBT_SF_ACCOUNTS') }}
-- ),

-- renamed as (
--     select
--         *
--     from snowflake_source
-- )
  
-- select * from renamed

-- stage_customer as (
--   select
--     ID,
--     FAX,
--     NAME,
--     TYPE,
--     PHONE
--   from source
-- )

-- with customer_orders as (
--    select
--        customer_id,
--        min(order_date) as first_order_date,
--        max(order_date) as most_recent_order_date,
--        count(order_id) as number_of_orders


--    from jaffle_shop.orders


--    group by 1
-- )