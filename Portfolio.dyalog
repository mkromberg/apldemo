 Portfolio←{
     codes←'GOOG' 'AAPL' 'YHOO' 'MSFT' 'ORCL' 'AMZN' 'GOOG'
     quantity←10 20 30 40 40 50 90
     price←GetPrice ¨ codes ⍝ GetPrice each codes
     price+.×quantity       ⍝ Return net worth
 }
