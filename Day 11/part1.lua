s=io.read("*all")
t,nt={},{} for d in s:gmatch("%d+") do table.insert(t,tonumber(d)) end
for i=1,25 do
    for _,v in pairs(t) do
        if v==0 then table.insert(nt,1) goto a1 end
        c=tostring(v):gsub("%..+","")
        if #c%2==0 then
            l,r=c:sub(1,#c/2),c:sub(#c/2+1)
            table.insert(nt,tonumber(l));table.insert(nt,tonumber(r))
        else
            table.insert(nt,v*2024)
        end
        ::a1::
    end
    t,nt=nt,{}
end
print(#t)
