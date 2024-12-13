s=io.read("*all")
t,n={},0
td={{1,0},{-1,0},{0,1},{0,-1}}
for l in s:gmatch("[^\n]+") do tr={};table.insert(t,tr) for a in l:gmatch(".") do table.insert(tr,{a,false}) end end
function region(ch,r,c,a,p)
    if t[r] then
        ca=t[r][c]
        if ca and ca[1]==ch then
            if ca[2]==true then return a,p end
            a,ca[2]=a+1,true
            for _,d in pairs(td) do
                nr,nc=r+d[1],c+d[2]
                a,p=region(ch,nr,nc,a,p)
            end
        else
            p=p+1
        end
    else
        p=p+1
    end
    return a,p
end
for r,tr in pairs(t) do
    for c,a in pairs(tr) do
        if a[2]==true then goto a1 end
        x,y=region(a[1],r,c,0,0);n=n+x*y
        ::a1::
    end
end
print(n)
