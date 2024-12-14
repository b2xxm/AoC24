s=io.read("*all")
n=0
for ax,ay,bx,by,px,py in s:gmatch("(%d+).-(%d+).-(%d+).-(%d+).-(%d+).-(%d+)") do
    l,b,px,py,cpx,cpy=math.huge,0,tonumber(px),tonumber(py),0,0
    while true do
        dpx,dpy=px-cpx,py-cpy
        if dpx%ax==0 and dpy%ay==0 and dpx/ax==dpy/ay and dpx/ax*b<l then l=dpx/ax*3+b end
        b,cpx,cpy=b+1,cpx+bx,cpy+by
        if cpx>px or cpy>py then break end
    end
    if l~=math.huge then n=n+l end
end
print(n)
