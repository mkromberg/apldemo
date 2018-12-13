 Init;path
 ⎕CY'isolate'
 path←⊃⎕NPARTS 1↓⊃{('§'=⍵)⊂⍵}⊃⌽⎕NR'Init'
 {}isolate.Config'workspace'(path,'httpisolate.dws') ⍝ Use isolate base with HttpCommand available
