with payments as (

    select 
        orderid as order_id
        , amount / 100 as amount
        , status
        , created as created_at
    from {{ source('stripe', 'payment') }}
)

select * from payments