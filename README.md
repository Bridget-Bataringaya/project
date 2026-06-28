# 🔬 Patent Intelligence Pipeline

A Google Colab pipeline that downloads, cleans, analyses, and visualises a large patent dataset.

## Pipeline Steps
1. **Download & Extract** – Downloads the dataset from Google Drive and extracts nested ZIPs.
2. **Clean & Load** – Cleans TSV files in chunks (50k rows) and loads into SQLite without crashing RAM.
3. **Schema Export** – Saves the database DDL and structure as SQL/JSON instead of pushing the large binary.
4. **Extended Analytics** – CPC/IPC distribution, YoY growth, inventor diversity, abstract trends.
5. **AI Analysis** – Sends aggregated metrics to Google Gemini for an executive-level patent landscape report.
6. **Interactive Dashboard** – Generates a self-contained HTML dashboard with 10 Plotly charts.
7. **GitHub Push** – Commits all reports, schema, notebook, and this README.

## Output Files
- `reports/abstract_analysis.csv`
- `reports/abstract_analysis.json`
- `reports/ai_analysis_report.md`
- `reports/avg_inventor_stats.csv`
- `reports/avg_inventor_stats.json`
- `reports/company_inventor_diversity.csv`
- `reports/company_inventor_diversity.json`
- `reports/data_quality_report.csv`
- `reports/data_quality_report.json`
- `reports/database_schema.json`
- `reports/database_schema.sql`
- `reports/ipc_distribution.csv`
- `reports/ipc_distribution.json`
- `reports/join_results.csv`
- `reports/join_results.json`
- `reports/patent_dashboard.html`
- `reports/ranking_results.csv`
- `reports/ranking_results.json`
- `reports/top_companies.csv`
- `reports/top_companies.json`
- `reports/top_countries.csv`
- `reports/top_countries.json`
- `reports/top_cpc_classes.csv`
- `reports/top_cpc_classes.json`
- `reports/top_inventors.csv`
- `reports/top_inventors.json`
- `reports/trends_over_time.csv`
- `reports/trends_over_time.json`
- `reports/yoy_growth.csv`
- `reports/yoy_growth.json`
- `database_schema.sql` – Full DDL for all tables
- `database_schema.json` – Schema with row counts and sample rows
- `cloud_patent_pipeline.ipynb` – This notebook

## Dashboard
Open `reports/patent_dashboard.html` in any browser for interactive charts.

## AI Report
Read `reports/ai_analysis_report.md` for the Gemini-generated patent landscape analysis.

## Setup
Add these to Colab Secrets:
| Secret | Purpose |
|---|---|
| `GITHUB_TOKEN` | Push to this repo (repo scope) |
| `GEMINI_API_KEY` | Enable AI analysis via Gemini (optional) |
