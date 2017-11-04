function aex3()

%PRCIZARE: am explicat toate functiile doar odata (la punctul "a" din ex3).
%Cauza fiind folosirea multipla  a acestora
% rezulta , pentru punctele " b,c,d " am obmis comentariile
%singura diferenta a punctelor "b,c,d" este modificarea intervalului 
%in care pot varia impulsurile aleatoare...

% Va multumesc pentru intelegere

t=0:0.002:15;  %rezolutie 2ms
niv = [ -1 1 ];  %intervalul pentru nivele
figure(1)        
hold on
title('Semnal Dreptunghiular multinivel aleator Rezolutie 2ms')
xlabel('Time (s)')
ylabel('Amplitude ')
 
for n=0:0.25:40
    y = datasample(niv, 1) %y ia valori random pe nivelul dat 
    plot(t, y*rectpuls(t-n, 0.25)) %se traseaza graficul A(t) 
                                    %rectplus returneaza ipulsuri care 
                                    % au pozitia pe OX "t-n" timp-0.25 care
                                    % este perioada impulsului. 
                                    % La 0.25 se realizeaza impulsul.
                                    % Astfel , daca avem o
                                    % rezolutie temporala de 200ms punctele
                                    % pe care se traseaza graficul sunt
                                    % "rare" si se observa deformari
                                    % considerabile. Pentru a scapa de
                                    % "distorsiuni vizuale" alegem varianta
                                    % de rezolutie 20ms.
                               
end


t=0:0.02:15;    %rezolutie 20ms
niv = [ -1 1 ];


figure(2)   %se da un numar figurii pentru a putea distinge figurile 
            %in momentul afisarii.
            
hold on  %se creaza o noua figura - un alt grafic si retine informatiile-
         % in acesta ...

    %Urmeaza campurile de cod care afiseaza :
    
    %titlul figurii (1) 
    % textul "Time(s)" pe axa OX
    % textul "Amplitude" pe axa OY
title('Semnal Dreptunghiular multinivel aleator Rezolutie 20ms')
xlabel('Time (s)')
ylabel('Amplitude ')
 
for n=0:0.25:40
    y = datasample(niv, 1)
    plot(t, y*rectpuls(t-n, 0.25)) %se traseaza graficul
end


t=0:0.2:15; %rezolutie 2ms
niv = [ -1 1 ];
figure(3)
hold on  %se creaza o noua figura
title('Semnal Dreptunghiular multinivel aleator Rezolutie 200ms')
xlabel('Time (s)')
ylabel('Amplitude ')
 
for n=0:0.25:40
    y = datasample(niv, 1)
    plot(t, y*rectpuls(t-n, 0.25)) %trasarea graficului
end

end