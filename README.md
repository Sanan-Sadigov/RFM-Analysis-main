# RFM-Analysis
# RFM Analysis with Python Pandas

## Overview

This project focuses on implementing RFM (Recency, Frequency, Monetary) analysis using Python Pandas to segment customers for targeted marketing and business strategies. RFM is a powerful technique widely used in e-commerce and retail to understand and categorize customer behavior.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)

## Introduction

Welcome to the RFM Analysis project! In this Python Pandas project, we utilize the power of data manipulation and analysis to implement RFM segmentation. By categorizing customers based on Recency, Frequency, and Monetary value, we identify specific customer segments for strategic decision-making.Performed RFM Analysis on a dataset comprising 90,000 rows and 10 columns to uncover distinct customer segments. 

## Features

- **RFM Segmentation:**
  - Recency ranked from 1 to 4.
  - Frequency ranked from 1 to 4.
  - Monetary ranked from 1 to 4.

- **Customer Segments:**
  - **Best Customers (Ranking 111):** Customers with the highest Recency, Frequency, and Monetary rankings.
  - **High Spending New Customers (Ranking 141 to 142):** Newly acquired customers with high spending habits.
  - **Lowest Spending (Ranking 113 to 114):** Customers with the lowest spending behaviors.
  - **Churned Best Customers (Ranking 411, 412, 421, 422):** Previously best customers who have churned.

## Prerequisites

Ensure you have the following prerequisites before running the RFM analysis:

- Python (3.12)
- Pandas library
- Jupyter Notebook

## Installation

Clone the repository and install dependencies:

```bash
# Clone the repository
git clone https://github.com/your-username/RFM-Analysis-Pandas.git

# Navigate to the project directory
cd RFM-Analysis-Pandas

# Install dependencies
pip install -r requirements.txt

# Run RFM analysis script
python rfm_analysis.py


