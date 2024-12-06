s=io.read("*all")
ll,r={},1;for l in s:gmatch("[^\n]+") do ll[r]={};for c in l:gmatch(".") do table.insert(ll[r],c) end;r=r+1 end
n,ld=0,{{1,-1},{1,1},{-1,-1},{-1,1}}
for r, l in pairs(ll) do
    for c, a in pairs(l) do
        if a == "A" then
            x=0
            for _, d in pairs(ld) do
                if not (ll[r-d[1]] and ll[r-d[1]][c-d[2]]=="M") then goto e end
                if not (ll[r+d[1]] and ll[r+d[1]][c+d[2]]=="S") then goto e end
                x=x+1 ::e::
            end
            if x==2 then n=n+1 end
        end
    end
end
print(n)
