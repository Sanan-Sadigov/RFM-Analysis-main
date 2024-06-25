----Select top 100 customer_id,invoice_date
----from dbo.customer_data

-- Calculation of Recency, Frequency, and Monetary in CTEs
WITH Recency AS
(SELECT customer_id,
    CAST(invoice_date AS DATE) AS date_format,
    GETDATE() AS cur_date,
    DATEDIFF(DAY, GETDATE(), CAST(invoice_date AS DATE)) AS date_diff
  FROM dbo.customer_data
),

Frequency AS
(SELECT invoice_no,customer_id, COUNT(*) AS purchase_sayi
 FROM dbo.customer_data
 GROUP BY customer_id, invoice_no
),

Monetary AS
(SELECT customer_id, SUM(quantity * price) AS total_spending
 FROM dbo.customer_data
 GROUP BY customer_id
)

-- Combine CTES for ranking
SELECT
  r.customer_id,
  r.date_diff,
  f.purchase_sayi,
    m.total_spending,
  CASE
    WHEN f.purchase_sayi = 1 THEN 1
    ELSE NTILE(3) OVER (ORDER BY f.purchase_sayi) + 1
  END AS frequency_ranking,

  --Ntile(4) OVER (ORDER BY f.purchase_sayi) AS frequency_ranking,
  Ntile(4) OVER (ORDER BY r.date_diff) AS recency_ranking,
  Ntile(4) OVER (ORDER BY m.total_spending) AS monetary_ranking
FROM Recency r
JOIN Frequency f ON r.customer_id = f.customer_id
JOIN Monetary m ON r.customer_id = m.customer_id;



