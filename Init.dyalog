 Init;path
 ⎕CY'isolate'                                        ⍝ Bring in futures and isolate framework
 path←⊃⎕NPARTS 1↓⊃{('§'=⍵)⊂⍵}⊃⌽⎕NR'Init'             ⍝ Determine where this function was loaded from
 {}isolate.Config'workspace'(path,'httpisolate.dws') ⍝ Use isolate base with HttpCommand available
