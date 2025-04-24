# 🚖 Project: Customer Behavior Analysis – Zuber

## 🎯 Project Objective  
This project aims to help the ride-sharing company **Zuber** identify customer preferences and evaluate internal and external factors that affect trip demand and quality.  
The ultimate goal is to uncover insights that support better operational strategies, customer experience, and marketing decisions.

---

## ✅ Results Achieved  
- Combined and analyzed data from multiple CSV files previously retrieved via SQL  
- Explored the relationship between **destination neighborhoods**, **taxi company activity**, and **weather conditions**  
- Created visualizations to identify the top 10 most requested drop-off locations  
- Compared the number of trips among the top 30 taxi companies  
- Tested hypotheses related to weather impact on trip duration, specifically on rainy Saturdays  
- Applied statistical tests (e.g., `ttest_ind`) to validate findings  
- Delivered actionable insights based on exploratory analysis and hypothesis testing

---

## 🛠️ Tools and Technologies Used  
- **Language:** Python  
- **Libraries:** pandas, numpy, matplotlib, seaborn, scipy  
- **Data preparation:** PostgreSQL via SQL queries  
- **SQL techniques:**
  - Filtering by date and time of day
  - Grouping and aggregation
  - CASE statements for custom group logic
  - JOINs to combine data from multiple tables  
- **📄 The SQL queries used in this project are available in the [zuber_queries.sql](./zuber_queries.sql) file.**

---

## 🚀 Skills Developed  
- Analysis of behavior patterns based on location and vendor performance  
- Use of SQL for relational data extraction  
- Visualization and storytelling with real-world datasets  
- Application of statistical tests to support or reject business hypotheses  
- Communication of findings in a structured, data-driven format

---

## 🔧 Future Improvements  
- Incorporate **real-time weather API** to enhance analysis granularity  
- Develop a **dashboard** (Streamlit / Power BI) for dynamic reporting  
- Expand the hypothesis framework to include customer satisfaction metrics  
- Deploy automated pipelines for periodic data analysis and alerts
