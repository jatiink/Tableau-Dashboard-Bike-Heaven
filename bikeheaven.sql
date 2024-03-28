select * from customer;

select * from date;

select * from geography;

select * from internetsales;

select * from product;

select * from productcategory;

select * from productsubcategory;

Create Table product_main as (Select p.productkey as product_id,
	p.englishproductname as product_name,
	pc.englishproductcategoryname as category,
	ps.englishproductsubcategoryname as sub_category
	FROM product as p
	left join productsubcategory as ps
	on p.productsubcategorykey = ps.productsubcategorykey
	left join productcategory as pc
	on ps.productcategorykey = pc.productcategorykey);

select * from product_main;

create table customer_main as (select c.customerkey as customer_id,
	(CASE WHEN middlename = 'NULL' THEN c.firstname || ' ' || c.lastname
		  ELSE c.firstname || ' ' || c.middlename || ' ' || c.lastname
		  END) as customer_name,
	c.birthdate as birth_date,
	c.maritalstatus as marital_status,
	c.gender,
	c.yearlyincome,
	c.addressline1,
	g.city,
	g.stateprovincename as state,
	g.englishcountryregionname as country,
	g.postalcode as postal_code
FROM customer as c
LEFT JOIN geography as g
ON c.geographykey = g.geographykey);

select * from customer_main;
	
create table internetsales_main as (select productkey as product_id,
	TO_DATE(orderdatekey,'YYYYMMDD')as order_date,
	TO_DATE(TO_char(duedatekey,'99999999'),'YYYYMMDD')as due_date,
	TO_DATE(TO_char(shipdatekey,'99999999'),'YYYYMMDD')as ship_date,
	customerkey as customer_id,
	salesordernumber as order_id,
	totalproductcost::numeric::float8 as product_cost,
	salesamount as sales_amount
FROM internetsales);

select * from internetsales_main;

	