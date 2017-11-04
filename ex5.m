
function ex5
                                % rezolutie 200ms
t1=0:0.2:10;                  %se creza un vector t cu valori din 0.2 in 0.2 
s1=abs(1.5*sin(2*pi*0.25*t1)); %returneaza valoarea absoluta a fuctiei sinus ,
                                %functie ce caracterizeaza un semnal
                                %de perioata 4s,si amplitudine 1.5
                                
subplot(3,1,1)      %se creaza un subgrafic
plot(t1,s1),grid
title('Semnal sinusoidal dubla alternanta Rezolutie 200ms') %afiseaza titlul subgraficului
xlabel('Time(sec)') %afiseaza textul ce corespunde axei OX
ylabel('Amplitude') %afiseaza textul ce corespunde axei OX

t2=0:0.02:10;   %rezolutia temorala de 20 ms
s2=abs(1.5*sin(2*pi*0.25*t2));
subplot(3,1,2)
plot(t2,s2),grid %se creaza al 2-lea subgrafic
title('Semnal sinusoidal dubla alternanta Rezolutie 20ms')
xlabel('Time(sec)')
ylabel('Amplitude')

t3=0:0.002:10;  %rezolutia temporala de 2ms
s3=abs(1.5*sin(2*pi*0.25*t3));
subplot(3,1,3)  %se creaza al 3-lea subgrafic
plot(t3,s3),grid
title('Semnal sinusoidal dubla alternanta Rezolutie 2ms')
xlabel('Time(sec)')
ylabel('Amplitude')


end