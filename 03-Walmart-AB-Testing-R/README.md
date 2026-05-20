# Walmart A/B Test: Product Bundling and Revenue Optimization

**[View R Analysis Code](./exercise_09_revenue_vs_conversion_walmart_student%20(1).R) | [Download Presentation](./Causal%20Inference%20in%20marketing%20(1).pdf)**

## Project Overview
This project simulates a real-world A/B test conducted by Walmart to evaluate a new product bundling recommendation module at checkout. While many businesses focus solely on conversion rate, this analysis highlights a strategic scenario where **Revenue per Visitor (RPV)** and **Average Order Value (AOV)** become the primary success metrics over raw conversion.

## Business Objectives
- **The Challenge**: Test if a product bundling module actually adds value if it doesn't increase the number of buyers (conversion).
- **Hypothesis**: The module will increase basket size among converted users, leading to higher revenue despite stagnant conversion rates.
- **Goal**: Provide a data-driven recommendation to the Merchandising team on whether to roll out the treatment.

## Methodology (R)
- **Experimental Design**: A/B test with N=3800, 50/50 split between Control and Treatment.
- **Statistical Testing**:
  - **T-Test on Conversion**: Confirmed no statistically significant difference in conversion rates between groups (p-value > 0.05).
  - **T-Test on Revenue**: Confirmed a statistically significant increase in revenue per user in the treatment group.
- **Key Metrics Analyzed**:
  - Conversion Rate (CR)
  - Revenue per User (RPU)
  - Average Order Value (AOV)

## Key Insights
1. **The "Basket Size" Effect**: The treatment module successfully moved the needle on **basket value** rather than conversion quantity. Users were buying more items, not necessarily more users were starting to buy.
2. **Value Identification**: A common pitfall in A/B testing is stopping at "No change in Conversion." This analysis proved that the module is highly valuable for **margin and total revenue growth**.
3. **Rollout Recommendation**: Final recommendation favored a staggered rollout, provided that the increased AOV does not negatively impact shipping logistics or warehouse processing times.

## Technology Stack
- **Language**: R
- **Key Libraries**: `tidyverse`, `dplyr`, `ggplot2`, `stats` (t-tests).
- **Concepts**: Causal Inference, Marketing Analytics, A/B Testing.

---
### Links
- [Main Portfolio Repository](https://github.com/elenadkrayneva/Elena-Krayneva-Data-Portfolio)
- [Back to Main Projects Page](../README.md)
