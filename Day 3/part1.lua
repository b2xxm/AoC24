s=io.read("*all");t=0;for a,b in s:gmatch("mul%((%d+),(%d+)%)") do;t=t+a*b;end;print(t)
