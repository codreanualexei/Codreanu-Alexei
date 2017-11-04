function ex2()


t1 = 0:0.2:30; %rezolutie 200ms
x1 = 2*sawtooth(0.4*pi*t1, 0.5)-1; 
                  %semnal triunghiular
                  %perioada 5s                  
                  %initial semnalul are amplitudine +2 -2
                  %adaugam o componenta continua -1
                   
                              
 for i=1:1:length(x1)
     if x1(i)<=0
         x1(i)=x1(i)*2/3; %reducem amplitudinea -3 imultind cu o constanta
     else
         
     end
 end
 
  
subplot(3,1,1)
plot(t1,x1),grid

xlabel('Timp (sec)')    %text pe axa OX
ylabel('Amplitudine')     %text pe axa OY
title('Semnal Triunghiular Rezolutie 200ms')     %Titlul


t2 = 0:0.02:30; %rezolutie 200ms
x2 = 2*sawtooth(0.4*pi*t2, 0.5)-1; 
                  %semnal triunghiular
                  %perioada 5s
                  
                  %initial semnalul are amplitudine +2 -2
                  %adaugam o componenta continua -1
                   
                              
 for i=1:1:length(x2)
     if x2(i)<=0
         x2(i)=x2(i)*2/3; %reducem amplitudinea -3 imultind cu o constanta
     else
         
     end
 end
 
  
subplot(3,1,2)
plot(t2,x2),grid

xlabel('Timp (sec)')    %text pe axa OX
ylabel('Amplitudine')     %text pe axa OY
title('Semnal Triunghiular Rezolutie 20ms')     %Titlul

t3 = 0:0.002:30; %rezolutie 2ms
x3 = 2*sawtooth(0.4*pi*t3, 0.6)-1; 
                  %semnal triunghiular
                  %perioada 5s
                  
                  %initial semnalul are amplitudine +2 -2
                  %adaugam o componenta continua -1
                   
                              
 for i=1:1:length(x3)
     if x3(i)<=0
         x3(i)=x3(i)*2/3; %reducem amplitudinea -3 imultind cu o constanta
     else
         
     end
 end
 
  
subplot(3,1,3)
plot(t3,x3),grid

xlabel('Timp (sec)')    %text pe axa OX
ylabel('Amplitudine')     %text pe axa OY
title('Semnal Triunghiular Rezolutie 2ms')     %Titlul

end