s=io.read("*all")
t,n,r,c,dr,dc,pr,pc={},0,1,1,1,0,0,0
for l in s:gmatch("[^\n]+") do
    t[r]={} for a in l:gmatch(".") do if a=="^" then pr,pc=r,c end t[r][c]=a;c=c+1 end r=r+1;c=1
end
while true do
    if t[pr][pc]~="X" then t[pr][pc]="X";n=n+1 end
    ::a:: nr,nc=pr-dr,pc+dc if not t[nr] or not t[nr][nc] then break end
    if t[nr][nc]=="#" then dr,dc=-dc,dr goto a end pr,pc=nr,nc
end
print(n)
