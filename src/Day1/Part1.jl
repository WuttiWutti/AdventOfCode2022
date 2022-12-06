
maxCals = 0;
sumelve = 0;

open("docs\\input1.txt") do f
   while !eof(f)
      # read a new / next line     
      s = readline(f)
      if s == ""
         if sumelve > maxCals
            global maxCals = sumelve
         end
         sumelve = 0
      else
         global sumelve += parse(Int64, s)
      end
   end
   println(maxCals)
end