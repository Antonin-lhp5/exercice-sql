SELECT firstname, lastname, model, budget
FROM customer
INNER JOIN type 
ON ID_type = type.ID