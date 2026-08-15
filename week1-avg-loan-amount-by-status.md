**Query file:** [week1-avg-loan-amount-by-status.sql](./week1-avg-loan-amount-by-status.sql)

## Dataset
Bank loan dataset from Kaggle. It has 100,000 loan records with fields like loan amount, status, credit score, income, and purpose

## Question
Which loan status has the highest average loan amount?

## My Approach
I want to know the loan status that has the highest loan amount in terms of average. So I grouped loans by status,
calculated average loan amount for each.
A few rows had no status recorded, so I filtered those out. While checking 
the results, I noticed the average for "Fully Paid" looked unrealistically 
high in the millions.
I Ran a quick MAX() check and found some rows had 
99999999 as the loan amount, clearly a placeholder for missing data rather 
than a real value. Filtered those out too and recalculated.

## The Result
| Loan Status | Average Loan Amount |
|---|---|
| Charged Off | $324,975.23 |
| Fully Paid | $307,962.36 |

After removing the bad data, "Charged Off" loan status actually had a slightly 
higher average amount than "Fully Paid" ones which is the opposite of what the uncorrected numbers first suggested.
This could point to bigger loans being harder to repay,
or riskier lending decisions being made on larger amounts though that would need more digging to confirm.

## SQL Concept Used
WHERE (filtering nulls and placeholder values), GROUP BY, AVG, ORDER BY, ROUND
