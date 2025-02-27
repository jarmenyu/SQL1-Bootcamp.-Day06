select  p.name as name,
        m.pizza_name,
        m.price,
        round(m.price * (1 - pd.discount / 100)) as discount_price,
        pi.name as pizzeria_name
from person_order as po
inner join person as p on p.id = po.person_id
inner join menu as m on m.id = po.menu_id
inner join pizzeria as pi on pi.id = m.pizzeria_id
inner join person_discounts as pd on po.person_id = pd.person_id and pi.id = pd.pizzeria_id
order by p.name, m.pizza_name;