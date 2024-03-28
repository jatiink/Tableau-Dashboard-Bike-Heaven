# The Bike Haven Sales Dashboard

## Project Overview
This project is a business intelligence initiative for 'The Bike Haven', aimed at visualizing and analyzing sales data to support decision-making processes. The dashboard, built using Tableau, offers insights into product sales, customer performance, and budget analysis.

## Features
- **Top 10 Products by Sales Amount**: Identify top-selling products.
- **Top 10 Customers**: Highlight the most valuable customers.
- **Sales Figures vs. Budget**: Compare actual sales with budgeted figures.
- **Sales Figures by Region/City**: Analyze sales performance across regions.
- **Product Categories vs. Sales Amount**: Understand product category performance.

## Prerequisites
- Tableau Desktop
- PostgreSQL database
- pgAdmin or similar database management tool

## Setup Instructions
1. **Database Setup**: Restore the provided `.tar` database file into pgAdmin.
2. **Data Preprocessing**: Merge necessary tables using SQL to create three CSV files (`internetsales`, `customer.csv`, `product.csv`).
3. **Tableau Dashboard**: Import the generated and usefull CSV files into Tableau and design the dashboard.

## Dashboard Access
- The Tableau dashboard is accessible via Tableau Desktop or Tableau Public.
- For a video demonstration of the dashboard's interactivity, click [here](https://drive.google.com/file/d/1cAs6mUWOMFvImRKzE70Koe80iZF3qhUD/view?usp=sharing).

## Dataset
The dataset consists of multiple CSV files generated after preprocessing:
- `internetsales.csv`: Combined sales data.
- `customer.csv`: Merged customer and geography data.
- `product.csv`: Merged product, category, and subcategory data.

You can view dashboard from `Bike Heaven Dashboard.pdf`
