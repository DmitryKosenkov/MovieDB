# MovieDB

## 📖 Project Description  
A scalable, lightweight SQL database that stores structured information about top-grossing and influential films.  
The current dataset includes popular titles from **2024**, covering details such as directors, runtime, ratings, release years, genres, scores, gross revenue, and distributors.  

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
- **draw.io**  

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

<p align="left">
  <img src="https://github.com/Git-Axo/MovieDB/blob/main/eer/ERR_Diargam.drawio.png" width="661" height="211" alt="ER Diagram of Movie Database">
</p>

## 📄 Summary
Dima and Josh were responsible for designing the Entity Relationship Diagram (ERD) for the movie database by utilizing draw.io. Their task focused on translating the project’s conceptual structure into a relational schema that accurately represents how each component of the dataset connects. After reviewing the core categories of information—such as movie details, genres, scores, gross earnings, and distributors, they structured the database to center around the Movies table, which serves as the primary entity linking all related data through foreign key relationships. 

Ellie and Jocelyn were responsible for collecting the data sample. Our team wanted to narrow the scope as we decided to focus on the key aspects of what the database would focus on, really hitting on the key aspects of the movies. That did require a lot of decisions of which categories of the tables to keep and which were superfluous. In the end we decided on title, director first and last name, runtime, mpaa rating, release year, domestic gross, and distributor. Ellie worked on gathering the attributes for the movie table: title runtime, mpaa, and director name while Jocelyn worked on the attributes for the genre, score, gross distributor tables. Resources used to gather the sample data included google search, imdb, and rotten tomatoes. We compiled the data in excel 365. 



