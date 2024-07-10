-- Databricks notebook source
-- MAGIC %sql select * from winequality_white
-- MAGIC

-- COMMAND ----------

create database wine;


-- COMMAND ----------

create table wine.white as
select
    `fixed acidity` as fixed_acidity,
    `volatile acidity` as volatile_acidity,
    `citric acid` as citric_acid,
    `residual sugar` as residual_sugar,
    `chlorides`,
    `free sulfur dioxide` as free_sulfur_dioxide,
    `density`,
    `pH`,
    `sulphates`,
    `alcohol`,
    `quality`
from default.winequality_white;


-- COMMAND ----------

use wine 

-- COMMAND ----------

select * from white

-- COMMAND ----------

select count(*) from white

-- COMMAND ----------

select min(fixed_acidity), max(fixed_acidity), avg(fixed_acidity) from white;

-- COMMAND ----------

select quality , count(*) from white group by quality order by quality;
