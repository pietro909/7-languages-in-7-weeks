n := System args second asNumber
"calculate to #{n}" interpolate println
doFibonacci := method(to, 
    recur := method(current, collected,
        if(
            current == to, 
            collected last,
            recur(current + 1, collected append(collected at (-1) + collected at (-2)))
        )
    )
    recur(2, list(1, 1))
)

doFibonacci(n) println
