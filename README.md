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


