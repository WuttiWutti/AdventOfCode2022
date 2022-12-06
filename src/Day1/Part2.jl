
maxCals = [0; 0; 0; 0];
sumelve = 0;

open("docs\\input1.txt") do f
   while !eof(f)
      # read a new / next line     
      s = readline(f)
      if s == ""
         maxCals[1] = sumelve
         sort!(maxCals)
         global sumelve = 0
      else
         global sumelve += parse(Int64, s)
      end
   end
   println(sumelve)
   println(sum(maxCals) - maxCals[1])
end