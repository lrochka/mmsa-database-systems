SELECT first_name, last_name, 
    ROUND(COUNT(person_id) / 2) AS total_orders, SUM(quantity) AS total_items_bought,
    SUM(quantity * price - discount) AS total_money_spent
FROM person 
	LEFT JOIN `order` ON person.id = person_id
    LEFT JOIN order_item ON order.id = order_id
    LEFT JOIN item ON item.id = item_id
GROUP BY 1, 2;
