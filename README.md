
# Newfie Nook Database README

## Overview

Welcome to the Newfie Nook Database project. This database serves as the backbone for an e-commerce platform dedicated to celebrating the culture and craftsmanship of Newfoundland and Labrador. By providing a robust structure and efficient data management, the Newfie Nook Database supports seamless transactions between vendors and customers, ensuring aseamless shopping experience while promoting local artisans and products.

## Business Scenario

Newfie Nook is an e-commerce platform that showcases a carefully curated selection of products from Newfoundland and Labrador. Vendors, representing local artisans, have autonomy over their listings, while customers enjoy a seamless shopping experience. The platform prioritizes secure payment processing, prompt order fulfillment, and exceptional customer support to enrich the overall shopping journey.

## Entities & Attributes

### Person
- **Attributes:** Person_ID (Primary Key), Person_Name, Email, Phone_Number, Person_Type (Vendor or Customer), Address_ID (Foreign Key)
- **Description:** The Person entity stores key information for individuals associated with the platform, including vendors and customers. Each person is uniquely identified by a Person_ID and linked to their respective address.

### Address
- **Attributes:** Address_ID (Primary Key), Street_Address, City, Province, Postal_Code, Address_Type, Person_ID (Foreign Key)
- **Description:** The Address entity manages address details linked to individuals, facilitating efficient organization and management of location data. Each address is uniquely identified by an Address_ID.

### Vendors
- **Attributes:** Vendor_ID (Primary Key), Person_ID (Foreign Key), Vendor_Name, Username, Password, Payment_Info
- **Description:** The Vendors entity represents artisans and businesses supplying products to Newfie Nook. It allows vendors to manage their listings and track sales performance using login credentials provided.

### Customers
- **Attributes:** Customer_ID (Primary Key), Person_ID (Foreign Key), Username, Password, Payment_Info
- **Description:** The Customers entity represents customer accounts, providing access to personalized features and order history tracking. Each customer is associated with a unique Customer_ID.

### Products
- **Attributes:** Product_ID (Primary Key), Product_Name, Description, Price, Image, Category_ID (Foreign Key), Vendor_ID (Foreign Key)
- **Description:** The Products entity represents products available for purchase on the platform. It includes essential details such as name, description, price, and image, and is categorized and linked to vendors.

### Product_Category
- **Attributes:** Category_ID (Primary Key), Category_Name
- **Description:** The Product_Category entity organizes products into categories to enhance browsing and search functionalities. Each category is uniquely identified by a Category_ID.

### Order_Invoice
- **Attributes:** Invoice_ID (Primary Key), Date, Shipping_Information, Customer_ID (Foreign Key), Vendor_ID (Foreign Key), Product_ID (Foreign Key)
- **Description:** The Order_Invoice entity records order details, facilitating order tracking and financial management for customers and vendors. Each invoice is uniquely identified by an Invoice_ID.

### Join Tables
Various join tables establish many-to-many relationships between entities, facilitating connections and enhancing database flexibility.

## Business Rules

The database adheres to specific business rules ensuring data integrity and consistency throughout the platform. These rules govern entities such as products, vendors, customers, addresses, and order invoices, ensuring a seamless user experience.

## Relationships of ERD

The Entity-Relationship Diagram (ERD) visually represents the database structure, showcasing primary entities and their relationships. It emphasizes composite keys and foreign keys to ensure relational integrity and data consistency.

## Mock Data

Mock data generated using Mockaroo.com populates the database with realistic information, enabling comprehensive testing and analysis of database functionalities.

## Indexes

Indexes play a crucial role in optimizing database performance. Three key types of indexes—Foreign Key Indexing, Date-based Indexing, and Product-related Indexing—are strategically implemented to enhance data retrieval efficiency.

## SQL Queries

Example SQL queries demonstrate various database operations, including data retrieval, aggregation, filtering, and sorting, showcasing the versatility and functionality of the Newfie Nook database.

## Installation Instructions

1. Install a database management system such as pgAdmin for PostgreSQL.
2. Import the provided database schema using pgAdmin.
3. Populate the database with realistic mock data using a data generation tool like Mockaroo.
4. Customize database configuration settings according to your requirements and environment.

## Usage

Learn how to interact with the Newfie Nook Database:
- Query for product information.
- Update vendor details.
- Generate order reports.
- And more!

## Contributing Guidelines

Contributions to the Newfie Nook Database project are welcome! Follow these guidelines:
1. Submit bug reports or feature requests.
2. Fork the repository and create a new branch for your contributions.
3. Follow coding standards and conventions.
4. Submit a pull request with your changes for review.

## Troubleshooting

Encountering issues? Check out our troubleshooting tips or reach out to our support team for assistance.

## Contact Information

For questions, feedback, or collaboration opportunities, contact us via Github!

---

This expanded README provides comprehensive information about the Newfie Nook Database project, guiding users and developers through installation, usage, contribution, and troubleshooting processes. Feel free to customize it further to suit your project's specific requirements!
