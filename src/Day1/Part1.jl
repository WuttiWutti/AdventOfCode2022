
maxCals = 0;
sumelve = 0;
blockn = 1;

open("docs\\input1.txt") do f 
    while ! eof(f) 
       # read a new / next line     
       s = readline(f)  

         if 
            global blockn += 1
            if sumelve > maxCals 
               global maxCals = sumelve
               global sumelve = 0
            end
         else
            global sumelve += parse(Int64, s)
         end
    end
  end