# 📱 Social Media Impact Analysis

An end-to-end data analysis project exploring user behavior, engagement patterns, and the impact of social media usage on mental health.

---

## 🚀 Project Overview

This project analyzes multiple datasets related to social media platforms, including users, posts, sessions, comments, and mental health surveys.

The goal is to:

* Understand user demographics and behavior
* Identify high-performing content and platforms
* Analyze engagement patterns
* Study the relationship between screen time and mental health

---

## 🧰 Tech Stack

* **Python** (Pandas, NumPy)
* **Data Visualization** (Matplotlib, Seaborn)
* **SQL (MySQL Workbench)**
* **SQLAlchemy** (Data transfer from Python to SQL)

---

## 📂 Dataset Description

The project uses multiple datasets:

* `users` → User demographics and account details
* `posts` → Content performance (likes, shares, views)
* `sessions` → User activity and time spent
* `survey` → Mental health indicators (anxiety, depression, etc.)
* `comments` → User sentiment data
* `platforms` → Platform metadata

---

## 🧹 Data Cleaning

Key preprocessing steps:

* Removed duplicate records
* Handled missing values using median imputation
* Fixed invalid values (e.g., negative followers, unrealistic usage)
* Standardized survey scores (1–10 scale)

---

## ⚙️ Feature Engineering

Created meaningful features such as:

* **Engagement Rate**

  ```
  (likes + comments + shares) / views
  ```

* **Usage Buckets**

  * `<1h`, `1-2h`, `2-4h`, `4-8h`, `8h+`

* **Sentiment Labels**

  * Positive, Neutral, Negative

* Time-based features (hour, day)

---

## 📊 Key Analysis & Insights

### 📈 User Behavior

* Majority of users fall within younger age groups
* Different account types show varied follower patterns

### 📊 Content Performance

* Video-based content drives higher engagement
* Engagement varies significantly across platforms

### ⏱️ Activity Patterns

* Posting time impacts engagement levels
* Certain hours consistently perform better

### 🧠 Mental Health Insights

* Increased social media usage correlates with higher anxiety and depression scores
* Heavy users show more negative mental health indicators

### 💬 Sentiment Analysis

* Majority of comments are neutral
* Presence of negative sentiment indicates potential toxicity

---

## 🗄️ SQL Analysis

Data was imported into MySQL using SQLAlchemy and analyzed using SQL queries.

Key operations:

* JOINs across multiple tables
* Aggregations (AVG, COUNT)
* CASE-based segmentation
* Subqueries for behavioral insights

---

## 📌 Example SQL Query

```
SELECT u.account_type,
       AVG(p.likes) AS avg_likes
FROM users u
JOIN posts p ON u.user_id = p.user_id
GROUP BY u.account_type;
```

---

## 📁 Project Structure

```
├── data/
├── notebooks/
│   └── social_media_eda.ipynb
├── sql/
│   └── queries.sql
├── cleaned_data/
├── README.md
```

---

## 🎯 Key Learnings

* Importance of data cleaning in real-world datasets
* Feature engineering for meaningful insights
* Writing analytical SQL queries with joins and aggregations
* Translating data into business insights

---

## 🔮 Future Improvements

* Build a machine learning model to predict engagement or mental health risk
* Develop an interactive dashboard (Streamlit / Power BI)
* Perform time-series analysis

---

## 👤 Author

**Wajahat**
Aspiring Data Analyst / Data Scientist

---

## ⭐ If you like this project

Give it a ⭐ on GitHub!
