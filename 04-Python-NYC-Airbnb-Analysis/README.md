# NYC Airbnb Market Analysis: Pricing Drivers and Trends

**[View Jupyter Notebook](./Final_Python%20Final%20Airbnb.ipynb) | [Download Presentation Deck](./Black%20and%20White%20Photographer%20Portfolio%20Presentation,%20%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%20(1).pdf)**

## Project Overview
This project provides an exploratory data analysis (EDA) of the New York City Airbnb market using a 2019 dataset of ~48k listings. The goal is to help potential hosts and business strategists understand the key price drivers in one of the world's most competitive short-term rental markets.

## Objectives
- **Location Impact:** Quantify how different NYC boroughs (Manhattan, Brooklyn, etc.) influence listing prices.
- **Room Type Dynamics:** Compare the premium for "Entire homes" vs. "Private rooms" or "Shared rooms."
- **Host Strategy:** Analyze Host name/ID and listing frequency to identify "Superhosts" or commercial rental clusters.
- **Trend Identification:** Correlation between the number of reviews and listing price.

## Dataset
- **Source:** [Kaggle NYC Airbnb Open Data](https://www.kaggle.com/datasets/dgomonov/new-york-city-airbnb-open-data)
- **Scale:** 48,895 listings with 16 features including price, location, reviews, and availability.

## Technical Approach (Python)
- **Data Cleaning:** Handled missing values in `reviews_per_month` and `last_review`. Normalized data types for temporal analysis.
- **Exploratory Data Analysis (EDA):**
  - **Borough Distribution:** Identified Manhattan as the most expensive area (avg $196/night), followed by Brooklyn.
  - **Room Type Premiums:** Found that "Entire home/apt" listings command a 130%+ price premium over "Private rooms."
  - **Outlier Detection:** Used boxplots to identify luxury listings and pricing anomalies in high-demand neighborhoods.
- **Visualization:** Utilized `Seaborn` and `Matplotlib` for heatmaps and comparative bar charts.

## Key Insights
1. **Centrally Driven Pricing:** Proximity to tourism hubs in Manhattan and high-demand areas of Brooklyn is the single largest determinant of price.
2. **Luxury Segment:** Manhattan and Brooklyn show significant outliers (listings reaching $10,000/night), indicating a robust luxury/specialty rental market.
3. **Availability vs. Density:** Most active listings have low `availability_365`, suggesting high utilization in peak neighborhoods.

## Technology Stack
- **Language:** Python
- **Libraries:** `Pandas`, `NumPy`, `Matplotlib`, `Seaborn`, `Scikit-learn` (for clustering/preprocessing prep).
- **Environment:** Jupyter Notebook.

---
### Links
- [Main Portfolio Repository](https://github.com/elenadkrayneva/Elena-Krayneva-Data-Portfolio)
- [Back to Main Projects Page](../README.md)
