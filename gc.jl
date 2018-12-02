#!/usr/bin/env julia

function generateGrayCode(nbits)
    l1 = []
    l2 = []
    for i=1:nbits
        
    end
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
