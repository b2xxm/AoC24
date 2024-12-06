s=io.read("*all")
r,u=s:match("^(.-)\n\n(.*)$")
n,tr,tu=0,{},{}
for v in r:gmatch("(%d+|%d+)") do tr[v]=1 end
for l in u:gmatch("[^\n]+") do t={} for v in l:gmatch("%d+") do table.insert(t,v) end table.insert(tu,t) end
for _, t in pairs(tu) do
    y=1;for i=1,#t-1 do if not tr[t[i].."|"..t[i+1]] then y=0 break end end
    if y==1 then n=n+t[(#t//2)+1] end
end
print(n)
