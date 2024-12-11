s=io.read("*all")
t,n={},0
for l in s:gmatch("[^\n]+") do tr={};table.insert(t,tr) for a in l:gmatch(".") do table.insert(tr,{a,0}) end end
for r, ctr in pairs(t) do
    for c, a in pairs(ctr) do
        if a[1]=="." then goto s1 end
        for j, tr in pairs(t) do
            for k, b in pairs(tr) do
                if (j==r and k==c) or b[1]~=a[1] then goto s2 end
                tro=t[r*2-j] if not tro then goto s2 end ao=tro[c*2-k] if not ao then goto s2 end
                if ao[2]==0 then ao[2]=1;n=n+1 end ::s2::
            end
        end
        ::s1::
    end
end
print(n)
