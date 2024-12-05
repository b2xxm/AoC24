s=io.read("*all")
te,td={0},{0}
for m in s:gmatch("do%(%)()")do table.insert(te,m) end
for m in s:gmatch("don't%(%)()")do table.insert(td,m) end
ei,ev,di,dv,n=1,0,1,0,0
for i,a,b in s:gmatch("()mul%((%d+),(%d+)%)") do
	while true do v=td[di];if v and i>=v then dv=v;di=di+1 else di=di-1 break end end
	while true do v=te[ei];if v and i>=v then ev=v;ei=ei+1 else ei=ei-1 break end end
	if ev>=dv then n=n+a*b end
end
print(n)
