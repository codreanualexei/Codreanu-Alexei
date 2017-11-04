function ex1()



t1 = 0:0.2:100; %rezolutie 200ms
x1 = square(pi*t1,25); %semnal dreptunghiular
                     %perioada 2s si factorul de umplere 25%

for i = 1:1:length(x1)
   if x1(i) > 0
       x1(i) = x1(i)/2;
   end
end


subplot(3,1,1)
plot(t1,x1),grid
axis([0 5.2 -1.2 1.2]) %afiseaza o anumita portiune din grafic
xlabel('Time (sec)')    %afiseaza textu "Time (sec)" pe axa OX
ylabel('Amplitude')     %afiseaza textul "Amplitude" pe axa OY
title('Dreptunghiular de Rezolutie 200ms') %afiseaza titlul graficlui



t2 = 0:0.02:100; %rezolutie 200ms
x2 = square(pi*t2,25); %semnal dreptunghiular
                     %perioada 2s si factorul de umplere 25%
                     %square returneaza semnalul cu 25% umplere 

for i = 1:1:length(x2)
   if x2(i) > 0
       x2(i) = x2(i)/2; %reducem amplitudinea pozitiva cu 2 si obtinem 0,5
   end
end


subplot(3,1,2)  %afiseaza al 2-lea subgrafic
plot(t2,x2),grid %grid va afisa celule pe care se traseaza graficul
xlabel('Time(sec)') %afiseaza textul pe OX
ylabel('Amplitude') %afiseaza textul pe OY
axis([0 5.2 -1.2 1.2])  %afiseaza o portiune de grafic
title('Dreptunghiular de Rezolutie 20ms')%afiseaza titlul graficului


t3 = 0:0.002:100; %rezolutie 200ms
x3 = square(pi*t3,25); %semnal dreptunghiular
                       %perioada 2s si factorul de umplere 25%

for i = 1:1:length(x3)
   if x3(i) > 0
       x3(i) = x3(i)/2;
   end
end


subplot(3,1,3)
plot(t3,x3),grid
axis([0 5.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Dreptunghiular de Rezolutie 2ms')

end