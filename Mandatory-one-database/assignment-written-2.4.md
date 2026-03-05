## 2.4 Stored Objects

- Stored procedures  
    Stored procedures are basically like methods in programming languages. 
    It's a reusable block of sql code.

    So far we only have 1 stored procedure. It checks if an accounts character limit has been reached before creating a character. If it has, we send an error back. Otherwise we create a character based on given parameters and standard parameters

- Functions  

    Functions work similarly to stored procedures, but they are simpler and return a single value.

- Views  

    Views are stored queries. They allow us to write a complex query once, save it as a view, and then call on that view if we need it again.


- Triggers 

    A trigger is a query that is fired automatically before or after something happens to a table. Like web hooks or event listeners. They are useful for updating tables when a related table is updated


- Events  

    Events are scheduled queries. Like cron jobs.

## 2.5 Transactions

Explanation of the structure and implementation of transactions.