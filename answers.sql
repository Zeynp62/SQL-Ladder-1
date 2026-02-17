-- 1) Query all the data in the `pets` table.
SELECT * FROM pets;
-- 2) Query only the first 5 rows of the `pets` table.
SELECT * FROM pets LIMIT 5;
-- 3) Query only the names and ages of the pets in the `pets` table.
SELECT name, age FROM pets;
-- 4) Query the pets in the `pets` table, sorted youngest to oldest.
SELECT * FROM pets ORDER BY age ASC;
-- 5) Query the pets in the `pets` table alphabetically.
SELECT * FROM pets ORDER BY name;
-- 6) Query all the male pets in the `pets` table.
SELECT * FROM pets WHERE sex='M';
--other answer:
SELECT * FROM pets WHERE sex ILIKE 'M';
-- 7) Query all the cats in the `pets` table.
SELECT * FROM pets WHERE species ILIKE '%CAT%';
-- 8) Query all the pets in the `pets` table that are at least 5 years old.
SELECT * FROM pets WHERE age >= 5;
-- 9) Query all the male dogs in the `pets` table. Do not include the sex or species column, since you already know them.
SELECT name, age FROM pets WHERE species ILIKE '%dog%' AND sex ILIKE '%M%' ;
-- 10) Get all the names of the dogs in the `pets` table that are younger than 5 years old.
SELECT name FROM pets WHERE species ILIKE '%dog%' AND age < 5 ;
-- 11) Query all the pets in the `pets` table that are either male dogs or female cats.
SELECT * FROM pets WHERE (sex ILIKE '%M%' AND species ILIKE '%dog%') OR (sex ILIKE '%F%' AND species ILIKE '%cat%');
-- 12) Query the five oldest pets in the `pets` table.
SELECT * FROM pets ORDER BY age DESC LIMIT 5;
-- 13) Get the names and ages of all the female cats in the `pets` table sorted by age, descending.
SELECT name, age FROM pets WHERE sex ILIKE '%F%' AND species ILIKE '%cat%' ORDER BY age DESC;
-- 14) Get all pets from `pets` whose names start with P.
SELECT * FROM pets WHERE name ILIKE 'P%';
-- 15) Select all employees from `employees_null` where the salary is missing.
SELECT * FROM employees_null WHERE salary IS NULL ;
-- 16) Select all employees from `employees_null` where the salary is below $35,000 or missing.
SELECT * FROM employees_null WHERE salary<35000 OR salary IS NULL;
-- 17) Select all employees from `employees_null` where the job title is missing. What do you see?
SELECT * FROM employees_null WHERE job IS NULL;
--This is the output that I see:
-- id:101	
-- firstname:"UNKNOWN"
-- lastname:"UNKNOWN"
-- job:NULL
-- salary:-1
-- startdate:NULL
-- 18) Who is the newest employee in `employees`? The most senior?
SELECT * FROM employees_null 
-- 19) Select all employees from `employees` named Thomas.

-- 20) Select all employees from `employees` named Thomas or Shannon.

-- 21) Select all employees from `employees` named Robert, Lisa, or any name that begins with a J. In addition, only show employees who are _not_ in sales. This will be a little bit of a longer query.
--     * _Hint:_ There will only be 6 rows in the result.


-- ## Column Operations
-- 22) Query the top 5 rows of the `employees` table to get a glimpse of these new data.

-- 23) Query the `employees` table, but convert their salaries to Euros. 
--     * _Hint:_ 1 Euro = 1.1 USD.
--     * _Hint2:_ If you think the output is ugly, try out the `ROUND()` function.

-- 24) Repeat the previous problem, but rename the column `salary_eu`.

-- 25) Query the `employees` table, but combine the `firstname` and `lastname` columns to be "Firstname, Lastname" format. Call this column `fullname`. For example, the first row should contain `Thompson, Christine` as `fullname`. Also, display the rounded `salary_eu` instead of `salary`.
--     * _Hint:_ The string concatenation operator is `||`

-- 26) Query the `employees` table, but replace `startdate` with `startyear` using the `SUBSTR()` function. Also include `fullname` and `salary_eu`.

-- 27) Repeat the above problem, but instead of using `SUBSTR()`, use `STRFTIME()`.

-- 28) Query the `employees` table, replacing `firstname`/`lastname` with `fullname` and `startdate` with `startyear`. Print out the salary in USD again, except format it with a dollar sign, comma separators, and no decimal. For example, the first row should read `$123,696`. This column should still be named `salary`.
--     * _Hint:_ Check out SQLite's `printf` function.
--     * _Hint2:_ The format string you'll need is `$%,.2d`. You should read more about such formatting strings as they're useful in Python, too!

-- For the next few problems, you'll probably want to use `CASE`/`WHEN` statements.

-- 29) Last year, only salespeople were eligible for bonuses. Create a column `bonus` that is "Yes" if you're eligible for a bonus, otherwise "No".

-- 30) This year, only sales people with a salary of $100,000 or higher are eligible for bonuses. Create a `bonus` column like in the last problem for salespeople with salaries at least $100,000.

-- 31) Next year, the bonus structure will be a little more complicated. You'll create a `target_comp` column which represents an employee's target total compensation after their bonus. Here is the company's bonus structure:

-- Create this `target_comp` column, making sure to format _both_ the `salary` and `target_comp` columns nicely (ie, with dollar signs and comma separators).
