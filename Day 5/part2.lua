s=io.read("*all")
r,u=s:match("^(.-)\n\n(.*)$")
n,tr,tu=0,{},{}
for v in r:gmatch("(%d+|%d+)") do tr[v]=1 end
for l in u:gmatch("[^\n]+") do t={} for v in l:gmatch("%d+") do table.insert(t,v) end table.insert(tu,t) end
for _, t in pairs(tu) do
    y=1 ::b:: z=1
    for i=1,#t-1 do if not tr[t[i].."|"..t[i+1]] then y,z=0,0;t[i],t[i+1]=t[i+1],t[i];goto b end end
    if y==0 and z==1 then n=n+t[(#t//2)+1] end
end
print(n)
