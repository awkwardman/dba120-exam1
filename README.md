README file associated with Exam 1 Exercises

Exercise 1

SQL :
INSERT INTO terms VALUES
(6, "Net Due 120 Days", 120)

This query added 1 row to the "terms" table in database ap which had the following values: 6, Net Due 120 Days, 120
  I accidentally capitalized "Due" which is inconsistent with the table formate
  
<img width="713" alt="Screen Shot 2023-02-10 at 3 55 09 PM" src="https://user-images.githubusercontent.com/122575205/218195714-a97b3c49-0293-4079-b5c1-c76dcc028199.png">

Exercise 2

SQL :
UPDATE terms SET terms_description = 'Net due 125 days', terms_due_days = "125" WHERE terms_id = 6;

This query edited row 6 which was added in previous SQL statement:
<img width="645" alt="ch5_ex02_results" src="https://user-images.githubusercontent.com/122575205/218313706-f2f81a7f-5123-415b-a75b-8d91ba487991.png">

Exercise 3

SQL :
DELETE FROM terms
WHERE terms_id = 6;

This query deleted the row that was inserted in exercise 1
<img width="677" alt="ch5_ex3_results" src="https://user-images.githubusercontent.com/122575205/218313998-0c5343f3-c5b0-42d5-b421-876a39dcfd4e.png">

Exercise 4

SQL :
INSERT INTO invoices VALUES (DEFAULT, 32, "AX-014-027", "2018-8-1", 434.58, 0, 0, 2, "2018-8-31", NULL);

This statement adds an invoice row to the invoices table with default invoice number:
<img width="1189" alt="ch5_ex4_results" src="https://user-images.githubusercontent.com/122575205/218314853-02c8a319-aecd-4ba8-bfe2-e50aacd9f2bd.png">

Exercise 5

SQL: 
INSERT INTO invoice_line_items VALUES 
(115, 1, 160, 180.23, "Hard drive"), 
(115, 2, 527, 254.35, "Exchange Server update");

This statement added two rows to teh invoice_line_items table corresponding to invoice 115 added previously
<img width="897" alt="ch5_ex5_results" src="https://user-images.githubusercontent.com/122575205/218316062-6a551e8f-ecba-48d4-9356-066c6a3975ce.png">

Exercise 6

SQL:
UPDATE invoices 
SET credit_total = invoice_total * .10, 
    payment_total = invoice_total - credit_total 
WHERE invoice_id = 115;

This updates both credit_total and payment_total in the invoices table for invoice 115 (I accidently applied this to all rows)
<img width="1194" alt="ch5_ex6_results" src="https://user-images.githubusercontent.com/122575205/218317656-78460fcc-8f23-4c9d-a688-36639674509d.png">

Exercise 7

SQL:
UPDATE vendors 
SET default_account_number = 403 
WHERE vendor_id = 44;

This SQL statement changes the default account number for vendor ID 44 in the vendors table
<img width="1184" alt="ch5_ex7_results" src="https://user-images.githubusercontent.com/122575205/218318201-98b7d478-270a-4806-9519-8258ab49d2d2.png">

Exercise 8

SQL:
UPDATE invoices
SET terms_id = 2
WHERE vendor_ID IN
	(SELECT vendor_ID
     FROM vendors
     WHERE default_terms_id = 2)
     
This statement seems like it should work from a syntax perspective, however, it returns zero edited rows. When I double-checked this against the raw data it deep seem like the associated vendors were absent.
<img width="948" alt="ch5_ex8_results" src="https://user-images.githubusercontent.com/122575205/218320270-ec8cdfb2-4e12-4655-81d9-c0e768e1cc6e.png">

Exercise 9

SQL:
DELETE FROM invoice_line_items
WHERE invoice_id = 115;
DELETE FROM invoices
WHERE invoice_id = 115;

This statement deletes the rows from both the invoice_line_items and invoices tables associated with invoice 115 created in exercise 4
<img width="1194" alt="ch5_ex9_results1" src="https://user-images.githubusercontent.com/122575205/218320692-3697c90f-fbb5-4843-8052-f4c5d027bb1f.png">
<img width="1011" alt="ch5_ex9_results2" src="https://user-images.githubusercontent.com/122575205/218320696-7f3c0723-c4d7-4280-b214-e8981bc2b565.png">

