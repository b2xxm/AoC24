f=io.open("input.txt","r");s=f:read("a");f:close()
t,n,i,id="",0,1,0
for a in s:gmatch(".") do
    a=tonumber(a)
    if i%2==0 then for _=1,a do t=t.."." end goto a1 end
    t=t.."(" for x=1,a do b="|" if x==a then b=")" end t=t..id..b end
    id=id+1 ::a1:: i=i+1
end
while id~=0 do
    id=id-1
    fp,f=t:match("()(%("..id.."[|"..id.."]-%))")
    nf=select(2,f:gsub(id,id))
    for i,fs,j in t:gmatch("()(%.+)()") do
        o=#fs-nf
        if o>=0 and fp>i then
            d="";for _=1,nf do d=d.."." end
            t=t:sub(1,i-1)..f..t:sub(j-o,fp-1)..d..t:sub(fp+#f)
            break
        end
    end
end
p=0 for a,x in t:gmatch("(%b())(%.*)") do for d in a:gmatch("%d+") do n=n+p*d p=p+1 end p=p+#x end
print(n)
