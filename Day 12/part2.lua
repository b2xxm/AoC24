f=io.open("input.txt","r");s=f:read("a");f:close()
t,n,tb={},0,{}
td={{1,0},{-1,0},{0,1},{0,-1}}
for l in s:gmatch("[^\n]+") do tr={};table.insert(t,tr) for a in l:gmatch(".") do table.insert(tr,{a,false}) end end
function find(r,c) if t[r] then return t[r][c] end end
function perimeter(r,c,d)
    ao,re,nd=t[r-d[1]][c-d[2]],0,{d[2],d[1]}
    if not tb[d] then tb[d]={} end b=tb[d]
    if b[ao] then return 0 end ::reverse:: cr,cc=r,c
    while true do
        ca1=find(cr,cc) if ca1 and ca1[1]==ao[1] then break end
        ca2=find(cr-d[1],cc-d[2]) if not ca2 or ca2[1]~=ao[1] then break end
        b[ca2],cr,cc=true,cr+nd[1],cc+nd[2]
    end
    if re==0 then re,nd[1],nd[2]=1,-nd[1],-nd[2] goto reverse end return 1
end
function region(ch,r,c,a,p,d)
    ca=find(r,c)
    if ca and ca[1]==ch then
        if ca[2]==true then return a,p end
        a,ca[2]=a+1,true
        for _,d in pairs(td) do
            nr,nc=r+d[1],c+d[2];a,p=region(ch,nr,nc,a,p,d)
        end
    else
        p=p+perimeter(r,c,d)
    end
    return a,p
end
for r,tr in pairs(t) do
    for c,a in pairs(tr) do
        if not a[2] then x,y=region(a[1],r,c,0,0,nil);n=n+x*y end
    end
end
print(n)
