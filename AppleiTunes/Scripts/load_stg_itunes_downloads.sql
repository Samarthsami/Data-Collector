truncate etl_stage.stg_itunes_downloads;


copy  etl_stage.stg_itunes_downloads 
( load_id, 
  trans_id, 
  vendor_key,
  client_key,
  provider_key,
  provider,
  provider_country,
  upc,
  isrc,
  product_identifier,
  report_day,
  sale_or_return,
  currency_key,
  country_key,
  royalty_currency,
  preorder,
  isan,
  cma,
  asset_content,
  grid_no,
  promo_code,
  parent_id,
  parent_type_id,
  attributable_purchase,
  primary_genre,
  prod_no_dig,
  product_type_key,
  distribution_key,
  sales_type_key,
  service_type_key,
  transaction_type_key,
  distribution_channel_key,
  partner_id,
  label_key,
  product_key,
  artist_key,
  spnl_key,
  sales_division_key,
  product_conf_key,
  product_types_key,
  sales_category_key,
  state_province,
  city_name,
  transaction_date_key,
  consumer_key,
  vendor_identifier,
  artist,
  title,
  label,
  quantity,
  quantity_returned,
  download_date,
  order_id,
  customer_id,
  apple_id,
  vendor_offer_code,
  retail_value,
  wholesale_value,
  rpu,
  wpu,
  media_key
 )
from '#file_name#'
iam_role '#iamrole#'
delimiter '\007' timeformat 'auto' dateformat 'YYYY-MM-DD' GZIP MANIFEST STATUPDATE OFF COMPUPDATE OFF ignoreheader 1 maxerror 10 TRUNCATECOLUMNS;


exit
