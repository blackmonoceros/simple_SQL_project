# simple_SQL_project

“Online auction database”
Project description: The project concerns the creation of a database for an online auction system.
The database will store information about users, products, offers,
categories, ratings and transactions.
Tables:
1. Table "user" - contains information about registered auction users.

2. Table "product" - stores information about products put up for auction.

3. Table "offer" - contains information about offers placed by users for
products.

4. Table "category" - stores information about the categories to which
products belong.

5. Table "rating" - contains ratings placed by users for products.

6. Table "transaction" - stores information about completed transactions.

CHECK constraints:

7. CHECK constraint on the "user" table - checks whether the user is
over 18 years old.
8. CHECK constraint on the "product" table - checks if the product price is greater
than 0.
Relations:
9. Relationship between user and offer tables: The offer table contains
a user_id column, which is a foreign key referencing
the id column in the user table. This means that each offer is associated
with one user.
10. Relationship between product and offer tables: Similarly, the offer table contains
a product_id column, which is a foreign key referencing the id column
in the product table. This means that each offer is associated
with one product.
11. Relationship between user, product and rating tables: The rating table
contains the user_id and product_id columns, which are
foreign keys referencing the id columns in the user and product tables, respectively.

This means that each rating is associated with one user and one
product. 12. Relationships between user, product and transaction tables: The
transaction table contains columns user_id and product_id, which are
foreign keys to the id columns in the user and product tables,
respectively. This means that each transaction is associated with one
user and one product.

Views:
13. View number_of_offers_per_product: This view returns the number of offers for
each product.

14. View average_product_rating: This view returns the average rating for
each product.

15. View highest_offer_per_product: This view returns the highest offer for
each product.

16. View products_in_category: This view returns the products along with their
categories.

