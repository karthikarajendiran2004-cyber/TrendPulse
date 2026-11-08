
# TrendPulse — Part 3: Data Visualization & Exploratory Data Analysis

## Project Overview

TrendPulse analyzes YouTube trending video data from the United States,
Great Britain, and India.

Part 3 focuses on exploratory data analysis, statistical analysis,
data visualization, audience retention, funnel analysis, and cohort analysis.

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Plotly
- Google Colab

## Dataset

The analysis combines YouTube trending video records from:
- United States (US)
- Great Britain (GB)
- India (IN)

The cleaned dataset contains 46,000 records and 14 categories.

## Analysis Performed

### 1. Data Cleaning
- Removed duplicate records.
- Handled missing values.
- Converted date columns.
- Merged category information.
- Calculated days_to_trend.

### 2. Statistical Analysis
- Calculated mean, median, and mode for views and likes.
- Identified right-skewed distributions.
- Used IQR to detect outliers.
- Kept outliers because viral videos are important to the analysis.

### 3. Visualizations
Created Matplotlib charts and interactive Plotly charts to explore:
- Category distribution.
- Views distribution.
- Views versus likes.
- Trending videos over time.
- Views by category.
- Correlation heatmap.
- Audience retention.
- Monthly cohort performance.

### 4. Correlation Analysis

Strongest correlations:
- Views and likes: 0.921
- Views and comment count: 0.916

These are strong positive relationships. Correlation does not imply causation.

### 5. Funnel Analysis

Total unique videos: 14,699

| Funnel Stage | Videos |
|---|---:|
| All videos | 14,699 |
| Above median peak views | 7,349 |
| Above 90th percentile peak views | 1,470 |
| Above 90th percentile with 1,000+ comments | 1,441 |

The largest drop-off occurred between all videos and videos above median peak views.

### 6. Audience Retention

| Day | Retention |
|---|---:|
| Day 1 | 100.00% |
| Day 2 | 62.99% |
| Day 3 | 41.89% |
| Day 5 | 19.59% |
| Day 7 | 10.06% |

Great Britain showed the highest Day 7 retention among the three countries.

Music had the strongest category retention at Day 7, with 29.63%.

### 7. Cohort Analysis

| Cohort | Videos | Average Peak Views | Average Lifespan |
|---|---:|---:|---:|
| 2017-11 | 3,562 | 1,105,509.83 | 4.17 days |
| 2017-12 | 5,660 | 1,042,779.26 | 3.37 days |
| 2018-01 | 5,411 | 821,974.74 | 2.88 days |
| 2018-02 | 66 | 354,867.68 | 1.00 day |

November 2017 had the highest average peak views and lifespan.

February's cohort contains only 66 videos, so its results should be interpreted cautiously.

## Content Strategy Briefing

Entertainment was the most represented category, with 3,387 unique videos, followed by Music with 1,883 videos. However, Music showed the strongest audience retention, with 29.63% of its videos still trending on Day 7, compared with 13.58% for Entertainment. Overall, only 10.06% of videos remained trending on Day 7. Great Britain had the highest Day 7 retention at 14.37%, followed by the United States at 10.81% and India at 5.90%. The November 2017 cohort achieved the highest average peak views at approximately 1.11 million. Content creators could explore Music and Entertainment content while focusing on strategies that encourage viewers to engage over several days.

## Project Limitations

- The analysis uses a historical dataset rather than live YouTube data.
- Only videos included in the supplied trending dataset were analyzed.
- Cohort sample sizes differ, especially in February 2018.
- Correlation does not establish causation.

## How to Run

1. Open the notebook in Google Colab.
2. Upload or connect the required dataset files.
3. Install the required libraries if needed:

   pip install pandas numpy matplotlib seaborn plotly

4. Run the notebook cells in order.

## Output Files

- part3_cleaned_dataset.csv
- video_summary.csv
- funnel_summary.csv
- retention_summary.csv
- country_retention_summary.csv
- category_retention_summary.csv
- cohort_summary.csv

Charts are stored in the charts folder.

---

Part 3 completed: Data Visualization & Exploratory Data Analysis.
