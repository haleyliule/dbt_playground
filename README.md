# dbt_playground

I've been wanting to explore dbt a little, so I created this playground repo and here are the steps I have taken so far:

1. ran docker image to spin up a local MySQL container
2. built db connection in TablePlus, created schema as well
3. grabbed data from Kaggle open dataset: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce, this dataset contains 9 e-commerce data csvs which was organized using Kimball methodology, they are order_info, customer_info,payment_info, review_info. etc
4. set up staging folder; within staging/brasil-ecom/base, there are light data transformation queries for each dataset