f=io.open("input.txt","r");s=f:read("a");f:close()
t,n,pr,pc={},0,0,0
for l in s:gmatch("[^\n]+") do
    x={};table.insert(t,x) for a in l:gmatch(".") do if a=="^" then a,pr,pc=".",#t,#x+1 end table.insert(x,a) end
end
for ri,x in pairs(t) do
    for ci,a in pairs(x) do
        if a=="#" or (ri==pr and ci==pc) then goto co end
        td,r,c,dr,dc,t[ri][ci]={},pr,pc,1,0,"#"
        while true do
            ::a:: nr,nc=r-dr,c+dc if not t[nr] or not t[nr][nc] then break end
            if t[nr][nc]=="#" then
                if not td[nr] then td[nr]={} end if not td[nr][nc] then td[nr][nc]={} end
                for _,d in pairs(td[nr][nc]) do if d[1]==dr and d[2]==dc then n=n+1;goto en end end
                nd={dr,dc};table.insert(td[nr][nc],nd);dr,dc=-dc,dr;goto a
            end
            r,c=nr,nc
        end
        ::en:: t[ri][ci]="." ::co::
    end
end
print(n)
