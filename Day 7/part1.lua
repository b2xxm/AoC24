s=io.read("*all")
n=0
function valid(r,to)
    if #to==0 then return r==0 end
    local o,nto=to[1],{table.unpack(to,2,#to)}
    return valid(r-o,nto) or (r%o==0 and valid(r/o,nto))
end
for l in s:gmatch("[^\n]+") do
    r,so=l:match("(%d+):(.+)");r=tonumber(r)
    to={} for a in so:gmatch("%d+") do table.insert(to,1,tonumber(a)) end
    if valid(r,to) then n=n+r end
end
print(n)
