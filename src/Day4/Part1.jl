function compare(x, y)
    result = 0
    if parse(Int64, x) < parse(Int64, y)
        result = 1
    elseif parse(Int64, x) > parse(Int64, y)
        result = -1
    end
    return result
end

count = 0

open("docs\\input4.txt") do f
    while !eof(f)
        # read a new / next line     
        s = readline(f)

        MaxMinSame = false

        first = SubString(s, 1, (findfirst(",", s)[1]) - 1)
        second = SubString(s, (findfirst(",", s)[1]) + 1, length(s))

        firstR = compare(SubString(first, 1, findfirst("-", first)[1] - 1), (SubString(second, 1, findfirst("-", second)[1] - 1)))
        secondR = compare(SubString(first, findfirst("-", first)[1] + 1, length(first)), SubString(second, findfirst("-", second)[1] + 1, length(second)))

        if firstR * secondR <= 0
            global count += 1
        end
    end
    println(count)
end
