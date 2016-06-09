n := System args second asNumber
#"calculate to #{n}" interpolate println
result := list(1, 1)
while(result size < n,
      result append(result at(-1) + result at(-2))
     )
result last println
