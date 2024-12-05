s=io.read("*all")
t,t2,n={},{},0
for a,b in s:gmatch("(%d+)%s+(%d+)")do if t[a] then t[a]=t[a]+1 else t[a]=1 end table.insert(t2,b) end
for _,v in pairs(t2) do if t[v] then n=n+v*t[v] end end;print(n)
