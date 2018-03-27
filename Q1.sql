問題１
CREATE TABLE item_category (
category_id SERIAL,
category_name varchar(256) NOT NULL
);

問題２
CREATE TABLE item (
item_id int PRIMARY KEY,
item_name varchar(256) NOT NULL,
item_price int NOT NULL,
category_id int
);

問題３
INSERT item_category SET category_id=1, category_name='家具';
INSERT item_category SET category_id=2, category_name='食品';
INSERT item_category SET category_id=3, category_name='本';


問題４
INSERT item SET item_id=1, item_name='堅牢な机', item_price=3000,category_id=1;
INSERT item SET item_id=2, item_name='生焼け肉', item_price=50,category_id=2;
INSERT item SET item_id=3, item_name='すっきりわかるJava入門', item_price=3000,category_id=3;
INSERT item SET item_id=4, item_name='おしゃれな椅子', item_price=2000,category_id=1;
INSERT item SET item_id=5, item_name='こんがり肉', item_price=500,category_id=2;
INSERT item SET item_id=6, item_name='書き方ドリルSQL', item_price=2500,category_id=3;
INSERT item SET item_id=7, item_name='ふわふわのベッド', item_price=30000,category_id=1;
INSERT item SET item_id=8, item_name='ミラノ風ドリア', item_price=300,category_id=2;

問題５
select item_name,item_price from item where category_id = 1;

問題６
select item_name,item_price from item where item_price>=1000;

問題７
select item_name,item_price from item where item_name LIKE '%肉%';

問題８
select item_id,item_name,item_price,category_name
from  item INNER JOIN item_category 
on item.category_id =  item_category.category_id      ;

問題９
select  sum(item_price) AS total_price  , category_name
from  item INNER JOIN item_category 
on item.category_id =  item_category.category_id      
GROUP BY item.category_id
ORDER BY total_price DESC;
