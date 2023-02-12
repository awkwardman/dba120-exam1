UPDATE invoices
SET terms_id = 2
WHERE vendor_ID IN
	(SELECT vendor_ID
     FROM vendors
     WHERE default_terms_id = 2)
