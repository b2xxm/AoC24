s=io.read("*all")
n=0
for v in s:gmatch("[^\n]+") do
    s,p,i,d=1,0,0,0
    for c in v:gmatch("%d+") do
        c=tonumber(c);if p==0 then goto e end
        if c>p then if d==1 then s=0 break end i=1 end
        if c<p then if i==1 then s=0 break end d=1 end
        a=math.abs(p-c);if a<1 or a>3 then s=0 break end
        ::e:: p=c
    end
    if s==1 then n=n+1 end
end
print(n)
