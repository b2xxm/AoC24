s=io.read("*all")
n=0
for ax,ay,bx,by,px,py in s:gmatch("(%d+).-(%d+).-(%d+).-(%d+).-(%d+).-(%d+)") do
    d=(ax*by-ay*bx) if d==0 then goto continue end
    px,py=px+0,py+0
    a,b=math.floor((by*px-bx*py)/d+0.5),math.floor((ax*py-ay*px)/d+0.5)
    if a*ax+b*bx==px and a*ay+b*by==py then n=n+a*3+b end ::continue::
end
print(n)
