 SetUpConvert

 filename←'c:\devt\apldemo\units.csv'
 units←⎕CSV filename'' 4 1
 (Name Measure Offset Factor)←↓⍉⊃units
 
 ⍝ Task: Write a function which will allow 
 ⍝       Convert 'C' 'F' 100
 ⍝ 212

