create unique index idx_person_discounts_unique on person_discounts (person_id, pizzeria_id);
SET enable_seqscan TO off;
EXPLAIN ANALYZE
SELECT * FROM person_discounts
WHERE person_id = 1 AND pizzeria_id = 1;