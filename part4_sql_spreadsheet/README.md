
# TrendPulse — What's Actually Trending Right Now?

## Project Overview
TrendPulse analyzes YouTube trending video data from the United States,
Great Britain, and India using Python, SQL, and Excel.

## Project Objectives
- Analyze YouTube trending videos across three countries.
- Identify popular video categories.
- Compare country performance.
- Analyze channel performance and engagement.
- Study how quickly videos become trending.
- Present insights using Excel charts.

## Tools and Technologies
- Python
- Pandas and NumPy
- Matplotlib and Seaborn
- SQLite and SQL
- Microsoft Excel
- OpenPyXL
- Google Colab

## Dataset
The cleaned dataset contains 46,000 records and 21 columns.

Countries: US, GB, and IN.

## SQL Analysis
1. Total records
2. Category performance
3. Country performance
4. Top 10 trending records
5. Channel performance
6. Category engagement
7. Trending speed
8. Country and category analysis
9. INNER JOIN
10. Monthly trending performance

## Key Findings
- Music recorded the highest accumulated views across categories.
- Entertainment had the most trending records.
- Great Britain had the highest accumulated views.
- Comedy had the highest like rate.
- News & Politics had the lowest average days to trend.
- Music had the highest average days to trend.

## Project Structure
- README.md
- requirements.txt
- analysis.sql
- trendpulse.db
- data/
- notebooks/
- spreadsheets/

## How to Run
1. Open the notebook in Google Colab or Jupyter.
2. Install dependencies using pip install -r requirements.txt.
3. Run the notebook cells in order.
4. Explore the SQL queries in analysis.sql.
5. Open the Excel workbook to view the analysis.

## Important Data Note
Some videos appear in multiple daily trending records.
Therefore, SUM(views) represents accumulated values across
the available records, not unique lifetime video views.

The top 10 results are trending records, so a video may
appear more than once.

## Conclusion
TrendPulse demonstrates an end-to-end data analytics workflow
using data preparation, SQL querying, exploratory analysis,
spreadsheet reporting, and data-driven insights.
