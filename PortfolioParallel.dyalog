 PortfolioParallel←{
     ⍝ Compute value of portfolio using parallel GetPrice calls
     codes←'GOOG' 'AAPL' 'YHOO' 'MSFT' 'ORCL' 'AMZN' 'GOOG'
     quantity←10    20     30     40     40     50     90
     price←GetPrice IÏ codes ⍝ Map GetPrice using parallel each: IÏ is model of ∥¨ 
     price+.×quantity        ⍝ Compute net worth as dot product (sum of products) of prices & quantities
 }
