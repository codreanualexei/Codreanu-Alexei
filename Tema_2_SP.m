
P=40; %perioada
D=6; %durata
N=50; %numarul de coeficienti
F=1/P; %frecventa
w0=2*pi*F; %pulsatia
t_tr=0:0.02:D; %timpul pe care se calculeaza integrala
x_tr= sawtooth((2*pi/D)*t_tr,0.5)/2+0.5;  %Construim "dintele de fierastrau" conform duratei precizate!

%Construim o perioada , dupa care o vom multiplica
t = 0:0.02:P; 
x = zeros(1,length(t)); %Pentru o perioada semnalul ia valorile 0 (se va vizualiza o linie dreapta)
x(t<=D)=x_tr;  %Pentru Durata precizata vom avea ce am construit mai devreme (un dinte de fierastrau)

%Avem construita o perioada a semnalului !
%Urmeaza sa reprezentam semnalul cu 4 perioade...

t_f=0:0.02:4*P+3*0.02; %Vectorul timp pentru reprezentarea a 4 perioade
x_f=repmat(x,1,4); %Vectorul ce descrie semnalul pentru 4 perioade
figure(1);      %Figura in care se reprezinta semnalul in functie de timp
plot(t_f,x_f);
axis([0 160 -0.1 1.2]); %Fixam imaginea pentru fix 4 Perioade
title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)');
hold on;


for k=-50:1:50
    x_t = x_tr;
    x_t = x_t .* exp(-j*k*w0*t_tr); %Vector ce descrie coeficientii corespunzatori
    X(k+51)=0; %Componenta cu la frecventa centrala
    for i = 1: length(t_tr)-1
        X(k+51) = X(k+51) + (t_tr(i+1)-t_tr(i))* (x_t(i)+x_t(i+1))/2;  %Aplicam formula
    end
end
x_re(1:length(t))=0; %initializam semnalul reconstruit cu N puncte
    

%Reconstructia semnalului x(t) pe un numar de puncte N

for i = 1: length(t) 
    for k=-50:1:50
        x_re(i) = x_re(i) + (1/P)*X(k+51)*exp(j*k*w0*t(i)); 
    end
end

x_ref_f=repmat(x_refacut,1,4); %O perioada de semnal refacut.

%~ Reprezentarea semnalului refacut

plot(t_f,x_ref_f,'--');     %t_f - timpul pentru patru perioade                 
xlabel('Timp [s]');         %x_ref_f - semnalul pentru patru perioade
ylabel('Amplitudine');



 % ~Reprezentarea spectrului 
figure(2);
f=-50*w0:w0:50*w0; 
stem(f,abs(X),'.');  % reprezentarea : X(f)- amplitudine in funcie de frecventa
title('Spectrul lui x(t)');
xlabel('Frecventa [Hz]');
axis([-8 8 -0.5 4]);
ylabel('|X|');
hold on
plot(f,abs(X),'--');

%################### Cateva randuri despre semnale #########################

% -Orice semnal periodic se poate aproxima printr-o suma infinita de sin si
% cos de diferite frecvente,fiecare avand anumiti coeficienti.Coeficientii
% reprezentand spectrul semnalului

%Daca ce se cunoaste comportarea semnalului pe o perioada , acesta poate fi
%reprodus sau poate fi multiplicat astfel in cat sa obinem oricate perioade
%dorim.Pe aces concept se bazeaza unele dispozitive electronice ce
%utilizeaza semnale sau le analizeaza , de exemplu Osciloscopul
%Digital.

% Semnalul reconstruit folosind un numar finit de termeni se poate
% interpreta ca esantionarea cu un anumit numar de puncte N

%Cunoscand spectrul semnalului practic se cunosc toate informatiile
%despre acesta, cum ar fi: Putere , Amlitudine , etc.




%::::::::::::::::::::::::::::::PRECIZARI::::::::::::::::::::::::::::::
% * In acest program am construit strict semnalul necesar afisarii,conform
% schemei prezentate in conditia temei,drept urmare  unele modificari ale
%codului pot duce la rezultate, altele decat cele asteptate.

% *Am utilizat variabile(vectori in majoritatea cazurilor) care pot fi
% evitate , dar am preferat sa pastrez claritatea codului , astfel am creat
% variabile noi cu nume ceva mai sugestive...


