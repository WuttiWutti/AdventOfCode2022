function findSameCharacter(a, b, c)
    for x in a
        if occursin(x, b) && occursin(x, c)
            return x
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
first = ["", "", ""]
second = ["", "", ""]

open("docs\\input3.txt") do f
    while !eof(f)
        # read a new / next line     
        for i = 1:3
            first[i] = readline(f)
        end

        x = findSameCharacter(first[1], first[2], first[3])
        global sum += (getValue(x))
    end
    println(sum)
end
