-- Crodwdfunding Database Schema
-- Contacts Table
CREATE TABLE contacts (
    contact_id INTEGER NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(30),
    PRIMARY KEY (contact_id)
);
-- Category Table
CREATE TABLE category (
    category_id VARCHAR(5) NOT NULL,
    category VARCHAR(20) NOT NULL,
    PRIMARY KEY (category_id)
);
-- Subcategory Table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) NOT NULL,
    subcategory VARCHAR(20) NOT NULL,
    PRIMARY KEY (subcategory_id)
);
-- Campaign Table
CREATE TABLE campaign (
    cf_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal DECIMAL NOT NULL,
    pledged DECIMAL NOT NULL,
    outcome VARCHAR(15) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(5) NOT NULL,
    currency VARCHAR(5) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(5) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
-- Verify that the tables were created
-- Contacts Table
SELECT *
FROM contacts;
-- Campaign Table
SELECT *
FROM campaign;
-- Category Table
SELECT *
FROM category;
-- Subcategory Table
SELECT *
FROM subcategory;