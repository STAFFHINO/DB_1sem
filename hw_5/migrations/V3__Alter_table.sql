alter table customers 
add constraint company_name_not_null check(company_name is not null),
add constraint adress_not_null  check(adress is not null),
add constraint customers_full_name_not_null  check(customers_full_name is not null);

alter table employees 
add constraint employees_full_name_not_null  check(employees_full_name is not null);

alter table locations 
add constraint locations_not_null  check(locations is not null);

alter table product_groups 
add constraint group_name_not_null  check(group_name is not null);

alter table products 
add constraint product_name_not_null  check(product_name is not null),
add constraint measuring_unit_not_null  check(measuring_unit is not null);

alter table purchases 
add constraint date_delivery_not_null  check(date_delivery is not null),
add constraint price_not_null  check(price is not null),
add constraint count_product_not_null  check(count_product is not null);

alter table sales 
add constraint date_delivery_not_null  check(date_delivery is not null),
add constraint price_not_null  check(price is not null),
add constraint count_product_not_null  check(count_product is not null);

alter table suppliers 
add constraint company_name_not_null check(company_name is not null),
add constraint adress_not_null  check(adress is not null),
add constraint suppliers_full_name_not_null  check(suppliers_full_name is not null);
