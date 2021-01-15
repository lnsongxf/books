function result(nx,ny,x,y,u,v,uo,rho,count,utim)
for j=1:ny

Tm1(j)=u(51,j)/uo;
Tm2(j)=u(101,j)/uo;
Tm3(j)=u(261,j)/uo;
Tm4(j)=u(301,j)/uo;

end

for i=1:nx

umx(i)=u(i,(ny-1)/2)/uo;
vmx(i)=v(i,(ny-1)/2)/uo;

end


figure
plot(x/(nx-1),umx,x/(nx-1),vmx,'LineWidth',1.5)
figure

plot(Tm1,y,Tm2,y,Tm3,y,Tm4,y,'LineWidth',1.5)

xlabel('U')
ylabel('Y')
figure
plot(count,utim)

%Stream function calculation
for j=1:ny

sx(:,j)=x(:);

end
for i=1:nx

sy(i,:)=y(:);

end

str=zeros(nx,ny);
for i=1:nx
for j=2:ny

str(i,j)=str(i,j-1)+0.5*(u(i,j)+u(i,j-1));

end
end
figure
contour(sx,sy,str)
figure
contour(sx,sy,u,'LineWidth',1.0)

end

