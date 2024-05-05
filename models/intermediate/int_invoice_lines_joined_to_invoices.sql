with invoice_lines as (
    select * from {{ ref('stg_music__invoice_lines') }}
),

music_invoices as (
    select * from {{ ref('stg_music__invoices') }}
),

joined as (
    select
        invoice_lines.invoice_lineid,
        invoice_lines.invoice_id,
        invoice_lines.track_id,
        invoice_lines.invoice_lineitem_revenue_usd,
        invoice_lines.quantity_purchased,        
        music_invoices.customer_id,
        music_invoices.invoice_date_est,
        music_invoices.billing_address,
        music_invoices.billing_city,
        music_invoices.billing_state,
        music_invoices.billing_country,
        music_invoices.billing_zipcode,
        music_invoices.invoice_revenue_usd
    from invoice_lines 
    left join music_invoices
        on invoice_lines.invoice_id = music_invoices.invoice_id
)

select * from joined