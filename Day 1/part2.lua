s=io.read("*all")
t,t1,t2,n={},{},{},0
for a,b in s:gmatch("(%d+)%s+(%d+)")do table.insert(t1,a);table.insert(t2,b) end
for _,v in pairs(t1) do if t[v] then t[v]=t[v]+1 else t[v]=1 end end
for _,v in pairs(t2) do if t[v] then n=n+v*t[v] end end;print(n)
