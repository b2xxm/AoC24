s=io.read("*all")
t1,t2,n={},{},0
for a,b in s:gmatch("(%d+)%s+(%d+)")do table.insert(t1,a);table.insert(t2,b)end
table.sort(t1);table.sort(t2)
for i,a in pairs(t1) do b=t2[i];n=n+math.abs(a-b)end;print(n)
