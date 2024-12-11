s=io.read("*all")
td={{1,0},{-1,0},{0,1},{0,-1}}
t,th,n={},{},0
for l in s:gmatch("[^\n]+") do tr={};table.insert(t,tr) for h in l:gmatch(".") do table.insert(tr,tonumber(h)) end end
function path(r,c,h)
    if h==9 then
        if not th[r] then th[r]={} end
        if th[r][c] then return end
        th[r][c],n=1,n+1 return
    end
    for _,d in pairs(td) do
        ar,ac=r+d[1],c+d[2]
        tr=t[ar] if not tr then goto a1 end
        ah=tr[ac] if not ah then goto a1 end
        if ah~=h+1 then goto a1 end
        path(ar,ac,ah) ::a1::
    end
end
for r,tr in pairs(t) do
    for c,h in pairs(tr) do
        if h==0 then path(r,c,h);th={} end
    end
end
print(n)
