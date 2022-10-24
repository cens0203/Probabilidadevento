%% Ensayo del lanzamiento de una moneda
% Donde 1 sera cara
% Donde 2 sera escudo

n=10;
%numero de lanzamientos
v=rand(1,n);
X=zeros(1,n);
%almacenamiento el numero de veces del evento
p=1/2;
%probabilidad de que caiga cara o escudo

figure(1)
plot(v,'.')

for i=1:n
    if (v(i)<p)
        X(i)=1;
    else
        if (p<=v(i) && v(i)<(2*p))
            X(i)=2;
        end
    end
end

%%grafica de lanzamientos/ensayos
figure (2)
subplot(1,2,1)
plot(X,'.')
title('Lanzamientos')
subplot(1,2,2)
histogram(X,'BinMethod','Sturges')
title('Distribucion de los lanzamientos')

%Encontrar dentro del vector x los No. 1 y 2 
cara=find(X==1);
escudo=find(X==2);

%numero de veces de un evento
f1=length(cara);
f2=length(escudo);

y(1)=f1/n;
y(2)=f2/n;

x=1:2;
figure (3)
bar(x,y)

