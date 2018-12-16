 SetUpTelco

⍝ Rates for Minutes and Data GB Usage for 3 Categories of user:
 rates←3 2⍴200 300,150 250,100 200

⍝ Usage data for 4 clients (minutes, Gb)
 usage←4 2⍴1 2,2 7,9 3,7 0

⍝ Client category is
⍝    1 if total usage (minutes+Gb)<5
⍝    2 if usage ≥5 and <10
⍝    3 if usage ≥10

⍝ Problem: Compute the per user bill
⍝ Hint:  see  ⍸

 ⎕←2 2⍴'rates' 'usage'rates usage
