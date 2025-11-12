# MovieDB

## 📖 Project Description  
A scalable, lightweight SQL database that stores structured information about top-grossing and influential films.  
The current dataset includes popular titles from **1990–2024**, covering details such as directors, runtime, ratings, release years, genres, scores, gross revenue, and distributors.  

Designed for research efficiency, it serves as a querying and analytical tool for exploring filmmaking trends and industry performance across time.  

## 🎯 Purpose of the Database  
The system enables researchers, analysts, and media professionals to examine relationships between variables such as:  
- Revenue performance by genre or studio  
- Audience scores and rating correlations  
- Director and studio success trends  
- Release year patterns and historical film evolution  

This allows for insights into filmmaking trends, profitability, and audience reception across different eras and genres.  

## 🧰 Technologies Used  
- **MySQL**  
- **Excel**  
- **MySQL Workbench**  
- **ERD (Entity Relationship Diagram) modeling tools**  

## ⚙️ How to Run the SQL Scripts  
1. Open **MySQL Workbench** (or a compatible SQL client).  
2. Create a schema named `movies_db`.  
3. Run the provided SQL scripts in this order:  
   - `movies_table.sql`  
   - `genres_table.sql`  
   - `score_table.sql`  
   - `gross_table.sql`  
   - `distribution_table.sql`  
4. Import data from the Excel dataset using `INSERT` statements or the `LOAD DATA` command.  
5. Execute queries and joins to explore insights such as:  
   - Top-grossing studios  
   - Average scores by genre  
   - Director performance metrics  
   - Trends by release year and rating  

## 🧩 Entity Relationship Diagram (ERD)

The ERD below represents the structure and relationships between all tables in the database.

<p align="center">
  <img src="https://github.com/user-attachments/assets/f4f8b318-5aca-4919-8b97-210bee654e71" width="661" height="211" alt="ER Diagram of Movie Database">
</p>

