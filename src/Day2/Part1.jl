function getCol(a)
    b = 0
    if a == "A" || a == "X"
        b = 1
    elseif a == "B" || a== "Y"
        b = 2
    elseif a == "C" || a == "Z"
        b = 3
    end
    return b
end

mat = [3 0 6; 6 3 0; 0 6 3]
solution = 0;

open("docs\\input2.txt") do f 
    while ! eof(f) 
       # read a new / next line     
        s = readline(f) 
        arr = split(s," ");

        col = getCol(arr[1])
        row = getCol(arr[2])

        global solution += (row + mat[row, col])
        println(solution)
    end
      println(solution);
  end

