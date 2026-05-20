# Acquisition Funnel: Marketing Campaign Performance Tracker

**[Download Excel Workbook](./excel/Marketing_Campaign_Performance_Tracker.xlsx.xlsx) | [View Raw Campaign Spend Data](./data/marketing_spend.csv.csv)**

## Project Overview
This project presents an interactive, full-funnel marketing performance tracker built entirely in **Microsoft Excel**. Working with a multi-channel campaign dataset containing N=309 rows of granular daily campaign data, the workbook transforms raw performance metrics (impressions, clicks, spend, leads, orders, revenue) into a strategic, dashboard-driven decision tool.

The pipeline is built on a clean, multi-layered sheet design:
*   `README`: Project scope and guide.
*   `Raw_Data`: Imported source campaign data.
*   `Clean_Data`: Data processed, cleaned, and standardized via **Power Query**.
*   `Calculations`: Row-level KPI calculations utilizing safety-checked formulas.
*   `Pivots`: Interactive pivot tables summarizing performance across platform, channel, and segment dimensions.
*   `Dashboard`: The visual front-end featuring dynamic KPI cards, platform slicers, and trend charts.
*   `Notes`: Complete methodology and analytical guidelines.

---

## Business Objectives
*   **Budget Optimization**: Compare marketing spend against revenue across platforms to identify high-ROI channels.
*   **Funnel Efficiency**: Track conversion progression across the acquisition funnel (**Clicks $\rightarrow$ Leads $\rightarrow$ Orders**) to pinpoint drop-off zones.
*   **Attribution & Segmentation**: Segment campaigns by platforms (Facebook, Google, Instagram, YouTube, Banner) and target segments (Tier 1, Tier 2, Hot, Wide, Blogger, Retargeting, Lookalike, Partner) to guide ad spend reallocations.

---

## Data Pipeline & Methodology

### Step 1: Data Import & Cleaning (Power Query)
The raw dataset (`marketing_spend.csv.csv`) was imported using **Excel Power Query** to establish an automated, repeatable data ingestion pipeline. The following transformations were implemented:
1.  **Ingestion & Promotion**: CSV file loaded, promoting the first row as column headers.
2.  **Structural Cleaning**: Removed the redundant `id` column while keeping `campaign_id` as the primary key.
3.  **Advanced Extraction**: Duplicated the `campaign_name` field and split it to isolate **Platform** (e.g., Google, Facebook) and **Campaign_segment** (e.g., Hot, Wide, Retargeting).
4.  **Formatting Standardization**: Cleaned text fields using `Trim` and `Clean` functions to eliminate whitespace or control character anomalies. Standardized capitalization for platforms and channels.
5.  **Type Validation**: Verified and forced correct data types for date, text, and numerical columns.
6.  **Reordering**: Structured the table column order logically before loading it back as a formatted, live Excel table (`Clean_Data`).

---

### Step 2: Safety-Checked KPI Calculations
A dedicated `Calculations` sheet extends the clean table with row-level performance KPIs. To prevent division-by-zero errors (`#DIV/0!`) from inactive or low-impression days, all division-based formulas are encapsulated in `IFERROR` handlers:

| Calculated Metric | Business Purpose | Excel Formula | Format |
| :--- | :--- | :--- | :--- |
| **CTR** | Click-Through Rate (ad click efficiency) | `=IFERROR(Clicks / Impressions, 0)` | Percentage |
| **CPC** | Cost-Per-Click (traffic acquisition cost) | `=IFERROR(Spend / Clicks, 0)` | Number, 2 dec |
| **Click_to_Lead_CR** | Click-to-Lead Conversion Rate | `=IFERROR(Leads / Clicks, 0)` | Percentage |
| **CPL** | Cost-Per-Lead (lead acquisition cost) | `=IFERROR(Spend / Leads, 0)` | Number, 2 dec |
| **Lead_to_Order_CR** | Lead-to-Order Conversion Rate (sales quality) | `=IFERROR(Orders / Leads, 0)` | Percentage |
| **CPA** | Cost-Per-Acquisition (cost per converted sale) | `=IFERROR(Spend / Orders, 0)` | Number, 2 dec |
| **ROAS** | Return on Ad Spend (topline efficiency) | `=IFERROR(Revenue / Spend, 0)` | Number, 2 dec |
| **ROMI** | Return on Marketing Investment (profitability) | `=IFERROR((Revenue - Spend) / Spend, 0)` | Percentage |
| **Gross_Profit** | Revenue generated minus ad spend | `=Revenue - Spend` | Number, 2 dec |
| **AOV** | Average Order Value (customer basket size) | `=IFERROR(Revenue / Orders, 0)` | Number, 2 dec |

> [!IMPORTANT]
> **Avoiding the "Average of Averages" Pitfall:**
> For row-level calculations, simple averages are used for granular rows. However, for dashboard KPI summaries and pivots, **weighted calculations** are built at the aggregate level (e.g., `Total Clicks / Total Impressions` for overall CTR, and `Total Spend / Total Orders` for overall CPA) to ensure statistical accuracy.

---

### Step 3: Pivot Summaries & Interactive Dashboard
*   **Dimensions Analyzed**: Broader marketing **Channel** (Social, Search, Influencer, Media) and specific **Platform** (Facebook, Google, Instagram, YouTube, Banner).
*   **Dashboard Visuals**:
    *   **KPI Scorecards**: Dynamic, large-format cells summarizing total impressions, spend, clicks, leads, orders, revenue, overall CPA, and ROAS.
    *   **Spend vs. Revenue Chart**: Grouped bar charts showing the direct financial return comparison for each platform.
    *   **Acquisition Funnel Chart**: Clean funnel stages highlighting drop-off rates at click, lead, and order milestones.
    *   **Interactive Slicers**: Slicers for **Channel** and **Platform**, alongside a **Timeline** control, allowing business stakeholders to filter the entire dashboard by specific dates and campaigns dynamically.

---

## Technology Stack
*   **Core Tool**: Microsoft Excel
*   **Data Prep**: Power Query (ETL, text-manipulation, column splits)
*   **Data Modeling**: Advanced Excel Formulas (`IFERROR`, logical and arithmetic mappings)
*   **Reporting**: Pivot Tables & Interactive Pivot Charts
*   **Front-end Design**: Dashboard UI (Custom typography, timeline filters, interactive slicers, dark-theme layout)

---

### Links
*   [Main Portfolio Repository](https://github.com/elenadkrayneva/Elena-Krayneva-Data-Portfolio)
*   [Back to Main Projects Page](../README.md)
