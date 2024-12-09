s=io.read("*all")
t,n={},0
for l in s:gmatch("[^\n]+") do tr={};table.insert(t,tr) for a in l:gmatch(".") do table.insert(tr,{a,0}) end end
for r, ctr in pairs(t) do
    for c, a in pairs(ctr) do
        if a[1]=="." then goto s1 end
        if a[2]==0 then a[2],n=1,n+1 end
        for j, tr in pairs(t) do
            for k, b in pairs(tr) do
                if (j==r and k==c) or b[1]~=a[1] then goto s2 end
                cr,cc,ro,co=r,c,r-j,c-k ::s3:: nr,nc=cr+ro,cc+co
                tro=t[nr] if not tro then goto s2 end
                ao=tro[nc] if not ao then goto s2 end
                if ao[2]==0 then ao[2],n=1,n+1 end cr,cc=nr,nc goto s3
                ::s2::
            end
        end
        ::s1::
    end
end
print(n)
