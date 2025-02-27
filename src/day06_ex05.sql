COMMENT ON TABLE person_discounts IS 'Таблица хранит персональные скидки для клиентов на основании истории заказов в пиццериях.';
COMMENT ON COLUMN person_discounts.id IS 'Уникальный идентификатор записи.';
COMMENT ON COLUMN person_discounts.person_id IS 'Идентификатор клиента, которому назначена скидка.';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Идентификатор пиццерии, в которой предоставлена скидка.';
COMMENT ON COLUMN person_discounts.discount IS 'Процентная скидка, применяемая для клиента в определенной пиццерии на основе количества заказов.';
