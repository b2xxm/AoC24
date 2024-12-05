t=io.read("*all")
n=0
for v in t:gmatch("[^\n]+") do
    l,r,j,k={},1,0,0;for c in v:gmatch("%d+") do table.insert(l,tonumber(c)) end
    ::b:: s,p,i,d,t=1,0,0,0,1;if r==1 then j,k=1,#l else j,k=k,j end
    for x=j,k,r do
        c=l[x];if p==0 then goto e end
        if c>p then if d==1 then if t==1 then t=0 goto x end s=0 break end i=1 end
        if c<p then if i==1 then if t==1 then t=0 goto x end s=0 break end d=1 end
        a=math.abs(p-c);if a<1 or a>3 then if t==1 then t=0 goto x end s=0 break end
        ::e:: p=c ::x::
    end
    if s==0 and r==1 then r=-1 goto b elseif s==1 then n=n+1 end
end
print(n)
