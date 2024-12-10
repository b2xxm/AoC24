f=io.open("input.txt","r");s=f:read("a");f:close()
t,n,i,id={},0,1,0
for a in s:gmatch(".") do
    c=i%2==0 and "." or id
    for _=1,a do table.insert(t,c) end
    id=c=="." and id or id+1;i=i+1
end
for p,v in pairs(t) do
    if v=="." then
        cp=#t ::a1:: t[cp],a=nil,t[cp]
        if a~="." then v=a goto a2 end
        cp=cp-1 if cp>p then goto a1 end goto a3
    end
    ::a2:: p=p-1;n=n+p*v ::a3::
end
print(n)
