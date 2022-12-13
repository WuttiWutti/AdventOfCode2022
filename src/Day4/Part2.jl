function overlaps(x1,x2,y1,y2)
    return (x2 <= y1 || x1 >= y2) && (x1 <= y2 || x2 >= y1)
end

count = 0
open("docs\\input4.txt") do f
    while !eof(f)
        # read a new / next line     
        s = readline(f)
        
        global lineCount+=1
        first = SubString(s, 1, (findfirst(",", s)[1]) - 1)
        second = SubString(s, (findfirst(",", s)[1]) + 1, length(s))

        x1 = SubString(first, 1, findfirst("-", first)[1] - 1)
        y1 = SubString(first, (findfirst("-", first)[1]) + 1, length(first))

        x2 = SubString(second, 1, findfirst("-", second)[1] - 1)
        y2 = SubString(second, (findfirst("-", second)[1]) + 1, length(second))
        
        if overlaps(parse(Int64,x1),parse(Int64, x2),parse(Int64, y1), parse(Int64, y2))
            global count+=1
        end
    end
    println(count)
end
