function collatz(N::Int)
    ret = Int[]
    push!(ret, N)
    while N > 1
        if isodd(N)
            N = 3N+1
        else
            N = div(N,2)
        end
        push!(ret, N)
    end
    return ret
end
