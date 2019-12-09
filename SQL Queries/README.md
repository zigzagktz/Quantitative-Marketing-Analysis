   # Quantitative-Marketing-Analysis
![campaign-creators-yktK2qaiVHI-unsplash](https://user-images.githubusercontent.com/32847030/69487497-f9c2df00-0e28-11ea-84bb-8d04e0020cb1.jpg)

## Key Steps
  1.  Customer Lifetime Value (SQL, MySQL)
  2.  Cross-Segment Cohort Analysis (Power BI)
  3.  EDA and Sales Forecasting (Python, Jupyter Notebook) 
## Data Description
The data was collected by Brazilian ecommerce company called Olist Store. There has been more than 10k orders made from 2016 to 2018 and in multiple different locations. This is a real commercial data has been anonymised and it represents a real-life situation. Below is the schema of the database. 
![SCHEMA](https://user-images.githubusercontent.com/32847030/69487614-0fd19f00-0e2b-11ea-811a-9739823003d8.png)


## Customer Lifetime Value (step-wise)
This is the value of revenue that a company can expect from its average customer over the course of their relationship with them. (Visit SQL queries folder)
  1. **Calculate Average Purchase Value:**  Calculated by dividing total revenue over a certain period of time by the total number of orders in that time period. 
  2. **Calcuate Average Purcahse Frequency Rate:** Calculated by dividing the number of purchases made in certain time period by count of unique customers. 
  3. **Calculate Customer Value:** Calcuate this value by diving average purchase value by average purchase frequency rate.
  4. **Calculate average customer lifespan:** Calculated by averaging the number of years a customer kept buying from the company.
  5. **Calculate Customer Lifetime Value:** Calculated by multiplying customer value with average customer lifespan. 
  
  Result
  
  ![result](https://user-images.githubusercontent.com/32847030/69489313-dfe2c580-0e43-11ea-8f53-5225b65a4e65.JPG)
  

 ## Cross-Segment Cohort Analysis
 [Link to reports](https://app.powerbi.com/view?r=eyJrIjoiMjIzNWRmMDUtMTliZi00YTQxLWE2YTktYmQ4OTVhMWJmOWYwIiwidCI6IjZhYmZjNzNmLWRhNjQtNDEzNy05ZjlmLTE1ZmFhZTU2ZjY4NSIsImMiOjN9)

   
  ![RMF 3](https://user-images.githubusercontent.com/32847030/69503479-25f16500-0ee8-11ea-8de2-0bf5219e1110.gif)
  
  ![DEMO 2](https://user-images.githubusercontent.com/32847030/69503490-30abfa00-0ee8-11ea-9e45-adaf2fd6bc32.gif)
  
  ![PROD 2](https://user-images.githubusercontent.com/32847030/69503488-2db10980-0ee8-11ea-9005-2b7fbdee796a.gif)
  
## EDA and Forecasting

![forecast](https://user-images.githubusercontent.com/32847030/69503798-9057d480-0eeb-11ea-926c-ef8ff13f9268.gif)
