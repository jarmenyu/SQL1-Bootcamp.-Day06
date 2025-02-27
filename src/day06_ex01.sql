insert into person_discounts (id, person_id, pizzeria_id, discount)
select 
        row_number() over() as id,
        po.person_id as person_id,
        pi.id as pizzeria_id,
        case
            when count(*) = 1 then 10.5
            when count(*) = 2 then 22
            else 30
        end as discount
from person_order as po
inner join menu as m on po.menu_id = m.id
inner join pizzeria as pi on m.pizzeria_id = pi.id
group by person_id, pi.id;