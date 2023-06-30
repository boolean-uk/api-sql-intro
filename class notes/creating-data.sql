INSERT INTO products (name, price_pence, is_discounted) 
VALUES ('lettuce', 98, false), ('potato', 66, false), ('orange', 45, true)

-- Note: Any fields that are optional/allowed to be null/have default values assigned to them can be skipped (e.g. in this example, `is_discounted` has a default value of FALSE
INSERT INTO products (name, price_pence) VALUES ('bagel', 80)