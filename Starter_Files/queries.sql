-- List the contact_id, last & first name, how much pledged coupled with category/subcategory and descriptions. 
-- Uses campaign, contacts, category, and subcategory tables.
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
order by pledged DESC;

-- List the contact_id, last & first name, how much pledged. 
-- Uses campaign and contacts tables.
SELECT campaign.contact_id, 
contacts.last_name, 
contacts.first_name,
campaign.pledged
FROM campaign
JOIN contacts
ON campaign.contact_id=contacts.contact_id
order by pledged DESC;

-- List count of category_id total instances. 
-- Uses campaign and category tables.
SELECT campaign.category_id, category.category, COUNT(campaign.category_id) AS frequency_counts
FROM campaign
JOIN category
ON campaign.category_id = category.category_id
GROUP BY campaign.category_id, category.category
ORDER BY frequency_counts DESC, campaign.category_id;

-- List count of subcategory_id total instances. 
-- Uses campaign and subcategory tables.
SELECT campaign.subcategory_id, subcategory.subcategory, COUNT(campaign.subcategory_id) AS frequency_counts
FROM campaign
JOIN subcategory
ON campaign.subcategory_id = subcategory.subcategory_id
GROUP BY campaign.subcategory_id, subcategory.subcategory
ORDER BY frequency_counts DESC, campaign.subcategory_id;

-- List total count of outcomes. 
-- Uses campaign table.
SELECT outcome, COUNT(category_id) AS frequency_counts
FROM campaign
GROUP BY outcome
ORDER BY frequency_counts DESC, outcome;

-- List total count of outcomes by category. 
-- Uses campaign and category tables.
SELECT campaign.outcome, category.category, COUNT(campaign.category_id) AS frequency_counts
FROM campaign
JOIN category
ON campaign.category_id = category.category_id
GROUP BY category.category, campaign.outcome
ORDER BY frequency_counts DESC, outcome;

-- List total pledged by category. 
-- Uses campaign and category tables.
SELECT category.category, SUM(campaign.pledged) AS total_pledged
FROM campaign
JOIN category
ON campaign.category_id = category.category_id
GROUP BY category.category
ORDER BY total_pledged DESC;
