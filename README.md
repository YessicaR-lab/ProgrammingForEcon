# A Cartography of Inequality: Regional Disparities in the EU Gender Pay Gap

**Authors**: David Abelovic (2895680), Xi Hui (2905810), Imane Ouahi (2896041), Chaimae Ouarhis (2885377), Rebecca Devasia (2801119)  
**Course**: Programming for Economists  
**Tutorial Group**: 5.2  
**Lecturer**: Simon Loop  
**Date**: June 2026

---

## 📖 Overview

This project investigates the **Gender Pay Gap (GPG)** across the European Union, moving beyond simple percentage comparisons to quantify the **absolute economic impact** on women. 

Using Eurostat data, we analyze wage inequality across **Northern, Western, Southern, and Eastern Europe** to answer two core questions:

1. Does the gender pay gap differ significantly between European regions?
2. How have these regional disparities evolved over time, particularly in the wake of economic shocks like the COVID-19 pandemic?

**Key finding**: While the *relative* pay gap (in %) is narrowing in some regions, the *absolute* financial penalty (in €) remains persistently high, especially in high-wage economies like Northern and Western Europe, highlighting that economic growth alone does not guarantee gender equality.

---

## 🗂️ Data Sources

This project uses two primary datasets from **Eurostat**, accessed via the `eurostat` R package:

- **`tesem180`** – **Gender pay gap in unadjusted form**: The difference between men’s and women’s average gross hourly earnings as a percentage of men’s earnings.
- **`nama_10_fte`** – **Average full-time adjusted salary per employee**: Allows fair country comparisons by adjusting for part-time work, expressed in Euros (EUR).

> **Reproducibility Note**: The R script automatically downloads these datasets directly from Eurostat using `get_eurostat()`. The raw `.rds` files are cached in the `/data` folder but are not required to be stored in GitHub.

---

## 📊 Methodology & Key Variables

To bridge the gap between relative inequality and real-world economic harm, we engineered the following variables:

| Variable | Type | Description |
| :--- | :--- | :--- |
| `region` | Categorical | Classifies EU countries into 4 groups: Northern, Western, Southern, and Eastern Europe (based on the UN geoscheme). |
| `gpg_severity` | Continuous (€) | **Our key innovation.** Calculates the absolute annual earnings gap: `(gpg / 100) * salary`. This translates the percentage gap into the actual euros lost by women each year. |
| `region_summary` | Aggregated | Provides the mean GPG, mean salary, and mean severity per region per year for trend analysis. |

**Analytical techniques**:
- **Temporal Analysis**: Line plots tracking GPG percentages and Severity (€) from 2007–2024.
- **Spatial Analysis**: Choropleth maps highlighting "hotspots" of inequality across the EU.
- **Event Analysis**: Pre/Post COVID-19 comparison (2019 vs 2021) to assess the pandemic's impact on gender wage gaps.
- **Sub-population Variation**: Boxplots to visualize the spread and medians of GPG within each region.

---

## 🖥️ Repository Structure

```bash
├── ProgrammingForEcon.Rproj      # RStudio project file (Open this first!)
├── analysis.Rmd                  # Main RMarkdown script with code & narrative
├── analysis.pdf                  # Knitted PDF of the final report
├── data/                         # Cached Eurostat data (.rds) - auto-generated
├── output/                       # (Optional) Exported plots/tables
├── renv/                         # renv package environment (for reproducibility)
└── README.md                     # This file
