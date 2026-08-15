SELECT "Loan Status", ROUND(AVG("Current Loan Amount"),2) AS Average_Loan_Amount
FROM loans
WHERE "Loan Status" IS NOT NULL
GROUP BY "Loan Status"
ORDER BY Average_Loan_Amount DESC;