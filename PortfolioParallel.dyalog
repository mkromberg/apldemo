 PortfolioParallel←{
     codes←'GOOG' 'AAPL' 'YHOO' 'MSFT' 'ORCL' 'AMZN' 'GOOG'
     quantity←10 20 30 40 40 50 90
     price←GetPrice IÏ codes ⍝ IÏ is model of ∥¨ (parallel each)
     price+.×quantity        ⍝ Return net worth
 }
