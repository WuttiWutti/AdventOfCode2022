mat = [3 0 6; 6 3 0; 0 6 3]
solution = 0;

function getRowIndex(cartesian, a)
    result = 0
    foreach(x-> 
        if x[2] == a
            result = x[1]
        end
    ,cartesian)
    return result
end

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

function  getRow(a, b)
    c = 0
    if b == "X"
        t = findall(x->x==0, mat)
        c = getRowIndex(t, a)
    elseif b == "Y"
        t = findall(x->x==3, mat)
        c = getRowIndex(t, a)
    elseif b == "Z"
        t = findall(x->x==6, mat)
        c = getRowIndex(t, a)
    end
end

open("docs\\input2.txt") do f 
    while ! eof(f) 
       # read a new / next line     
        s = readline(f) 
        arr = split(s," ");

        col = getCol(arr[1])
        row = getRow(col, arr[2])

        getRow("a", arr[2])
        global solution += (row + mat[row, col])
    end
      println(solution);
  end
