# Q5) Display the Supplier details of who is supplying 
# more than one product.

select sup.supp_id, supp_name, supp_city, supp_phone 
from supplier as sup
inner join
(
select * from supplier_pricing group by 
supp_id having count(supp_id) > 1 
) as sp
on sup.supp_id = sp.supp_id;




