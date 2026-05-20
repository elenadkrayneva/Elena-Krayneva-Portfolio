# Acquisition Funnel: Marketing Campaign Performance Tracker

Since Microsoft Excel `.xlsx` workbooks are binary files that **cannot be opened or previewed directly inside the web browser on GitHub**, this project provides a fully interactive Web Preview of the dashboard, alongside standard download links:

### ⚡ **[OPEN LIVE INTERACTIVE DASHBOARD PREVIEW](./index.html)** ⚡
*(Click the link above to view, filter, and interact with the dashboard in real-time right in your browser!)*

*   **[Download Microsoft Excel Workbook (.xlsx)](./excel/Marketing_Campaign_Performance_Tracker.xlsx.xlsx)** (To open and inspect the full data model locally in Excel)
*   **[View Raw Campaign Spend Data (.csv)](./data/marketing_spend.csv.csv)**

---

## Project Overview
This project presents an interactive campaign performance tracker and full-funnel acquisition dashboard. Built on a multi-stage data architecture, it analyzes multi-channel marketing campaigns (**Clicks $\rightarrow$ Leads $\rightarrow$ Orders**) across platforms and segments to evaluate spending efficiency and budget allocations.

The workbook is structured into clear, isolated layers:
*   `README`: Project scope and user guide.
*   `Raw_Data` & `Clean_Data`: Ingested and structured campaign data.
*   `Calculations`: Safety-checked performance calculations (CTR, CPA, ROAS, AOV, Gross Profit).
*   `Pivots` & `Dashboard`: Dynamic summaries and interactive slicer controls.

---

## Core Analytical Architecture

### 1. Data Cleaning & Ingestion (Power Query)
The raw campaign data was ingested and automated using **Power Query** with the following pipeline:
*   Removing redundant transaction IDs and splitting campaign text strings into clean **Platform** (Google, Facebook, Instagram, YouTube, Banner) and **Segment** (Hot, Wide, Blogger, Retargeting, LAL, Tier 1, Tier 2) columns.
*   Enforcing data type integrity and cleaning trailing whitespaces using `Trim` and `Clean` functions.

### 2. Safeguarded Row-Level KPI Calculations
To protect the dashboard from division-by-zero errors (`#DIV/0!`) on inactive campaign days, row-level KPI metrics are calculated using `IFERROR` functions:
*   **CTR**: `=IFERROR(Clicks / Impressions, 0)`
*   **CPA**: `=IFERROR(Spend / Orders, 0)`
*   **ROAS**: `=IFERROR(Revenue / Spend, 0)`
*   **ROMI**: `=IFERROR((Revenue - Spend) / Spend, 0)`
*   **Gross Profit**: `=Revenue - Spend`

> [!IMPORTANT]
> **Aggregate Integrity**:
> Simple averages are used for row-level details, but all dashboard cards and pivot summaries utilize **weighted aggregate equations** (e.g., `Total Spend / Total Orders` for overall CPA) to maintain complete statistical accuracy.

---

## Technology Stack
*   **Microsoft Excel**: Power Query (ETL pipeline), Advanced Excel Formulas, Pivot Tables & Dynamic Charts.
*   **Dashboard Front-end**: Custom UI styling, interactive platform slicers, date timelines.
*   **Interactive Web Preview**: HTML5, premium CSS grids, and Chart.js animations.

---
**[Back to Main Portfolio Page](../README.md)**
