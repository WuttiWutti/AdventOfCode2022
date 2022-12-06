function findSameCharacter(a, b)
    r = "a"
    for c in a
        if occursin(c, b)
            return c
        end
    end
end

function getValue(a::Char)
    if islowercase(a)
        return Int(a) - 96
    else
        return Int(a) - 38
    end
end

sum = 0

open("docs\\input3.txt") do f
    while !eof(f)
        # read a new / next line     
        s = readline(f)

        first = SubString(s, 1, floor(Int8, length(s) / 2))
        second = SubString(s, floor(Int8, length(s) / 2) + 1, length(s))
        global sum += getValue(findSameCharacter(first, second))
    end
    println(sum)
end
