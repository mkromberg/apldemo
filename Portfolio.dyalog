 Portfolio←{
    ⍝ Compute value of our portfolio
     codes←'GOOG' 'AAPL' 'YHOO' 'MSFT' 'ORCL' 'AMZN' 'GOOG' ⍝ Stock codes for each holding
     quantity←10    20     30     40     40     50     90   ⍝ Quantities held
     price←GetPrice ¨ codes ⍝ Map GetPrice function to each code, return vector of prices
     price +.× quantity     ⍝ Compute net worth as dot product (sum of products) of prices & quantities
 }
