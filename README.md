# dbt_playground

I've been wanting to explore dbt a little, so I created this playground repo and here are the steps I have taken so far:

1. ran docker image to spin up a local MySQL container
2. built db connection in TablePlus, created schemas as well
3. grabbed data from Kaggle open dataset: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce, this dataset contains 9 e-commerce data csvs which was organized using Kimball methodology, they are order_info, customer_info,payment_info, review_info. etc
4. set up staging folder; within staging/brazil-ecom, there are light data transformation queries for each datasets






----- metric setting -----
This dbt project aims to build profile tables for customer and product. This will involve sql data transformation, a sentiment analysis model result as well as a recommendation system to recommend customers different products. 

1. Build customer profile 
- purchase frequency
- product type
- tendency to purchase multiple products in one order or 1
- price range typically spent
- if they are on installment plan
- liked payment method
- location: city, zip code, state
- do they tend to shop within their state or outside 
- customer tenure since the first purchase 
- churn rate: there can be multiple definition of churn, with the given data we can use no purchase within 3 months 
- CLTV: customers live time value based on avg frequency 

2. Build product profile 
- price 
- how frequent these products are sold 
- product category
- do products get discontinued: no product sold within 3 months. 
- product sentiment analysis model -> summarize product reviews 
- avg delievery days
- state mostly sold in 
- state least sold in 

----- initial EDA -----

1. order_items: a customer can purchase multiple products or one product but multiple units in one order. That's why for one order id, often see order_item_id ranges, though sometimes they have the same product id and same seller id. This can help with managing customer segmentation so that we capture customers purchasing behaviours. 
2.