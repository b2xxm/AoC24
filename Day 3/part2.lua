s=io.read("*all")
te,td={0},{0}
for m in s:gmatch("do%(%)()")do table.insert(te,m) end
for m in s:gmatch("don't%(%)()")do table.insert(td,m) end
ei,ev,di,dv,n=1,0,1,0,0
for i,a,b in s:gmatch("()mul%((%d+),(%d+)%)") do
	while true do v=td[di];if v and i>=v then dv=v;di=di+1 goto c1 end di=di-1 break ::c1:: end
	while true do v=te[ei];if v and i>=v then ev=v;ei=ei+1 goto c2 end ei=ei-1 break ::c2:: end
	if not (ev>=dv) then goto c3 end n=n+a*b ::c3::
end
print(n)
