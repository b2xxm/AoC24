s=io.read("*all")
ll,r={},1;for l in s:gmatch("[^\n]+") do ll[r]={};for c in l:gmatch(".") do table.insert(ll[r],c) end;r=r+1 end
n,m,ld=0,"XMAS",{{1,-1},{1,0},{1,1},{0,-1},{0,1},{-1,-1},{-1,0},{-1,1}}
for r,l in pairs(ll) do
    for c,a in pairs(l) do
        if a=="X" then
            for _,d in pairs(ld) do
                nr,nc,mi=r,c,1 ::s:: nr,nc,mi=nr-d[1],nc-d[2],mi+1;if mi>#m then n=n+1 goto nd end
                if ll[nr] then if ll[nr][nc]==m:sub(mi,mi) then goto s end end ::nd::
            end
        end
    end
end
print(n)
