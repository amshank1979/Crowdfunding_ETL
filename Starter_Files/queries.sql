-- List the contact_id, last & first name, how much pledged coupled with category/subcategory and descriptions. 
SELECT campaign.contact_id, 
contacts.last_name, 
contacts.first_name,
campaign.pledged,
campaign.category_id,
category.category,
campaign.subcategory_id,
subcategory.subcategory
FROM campaign
JOIN contacts
ON campaign.contact_id=contacts.contact_id
JOIN category
ON campaign.category_id = category.category_id
JOIN subcategory
ON campaign.subcategory_id = subcategory.subcategory_id
order by last_name;

-- List the contact_id, last & first name, how much pledged. 
SELECT campaign.contact_id, 
contacts.last_name, 
contacts.first_name,
campaign.pledged
FROM campaign
JOIN contacts
ON campaign.contact_id=contacts.contact_id
order by last_name;

-- List count of category_id total instances. 
SELECT category_id, COUNT(category_id) AS frequency_counts
FROM campaign
GROUP BY category_id
ORDER BY frequency_counts DESC, category_id;

-- List count of subcategory_id total instances. 
SELECT subcategory_id, COUNT(subcategory_id) AS frequency_counts
FROM campaign
GROUP BY subcategory_id
ORDER BY frequency_counts DESC, subcategory_id;