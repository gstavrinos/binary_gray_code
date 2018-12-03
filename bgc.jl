#!/usr/bin/env julia

function generateGrayCode(nbits)
    codes = String[]
    push!(codes, "0")
    push!(codes, "1")
    if nbits <= 0
        return "Wrong input!"
    elseif nbits < 2
        return codes
    end
    i = 2
    while i < 2^(nbits)
        for j=i:-1:1
            push!(codes, codes[j])
        end
        for j=1:i
            codes[j] = "0" * codes[j]
        end
        for j=i+1:2*i
            codes[j] = "1" * codes[j]
        end
        i *= 2
    end
    return codes
end

function main()
    if isempty(ARGS)
        println("No number of bits given")
        return
    else
        nbits = parse(Int, ARGS[1])
        codes = generateGrayCode(nbits)
        println(codes)
    end
end

main()
