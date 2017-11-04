function ex4()

t1=0:0.2:10;    %rezolutia 200 ms 
                %adica un vector cu valori ce variaza crescator din 0,2 in
                %0,2 .
s1=0.8*sin(2*pi*0.333*t1);  %semnalul sinusoidal de perioada 3s
for i=1:1:length(s1);      
    if s1(i)<0;         %daca valorile semnalului sunt negative
                        
        s1(i)=0;        % le anulam .
    end
end
subplot(3,1,1)      % se creaza un prim subgrafic
plot(t1,s1),grid
title('Semnal sinusoidal monoalternanta Rezolutie 200ms'); %titlul subgraficului
xlabel('Time(sec)') %text corespunzator abscisei
ylabel('Amplitude') %text corespunzator ordonatei



t2=0:0.02:10;   %pentru rezolutie 20ms
s2=0.8*sin(2*pi*0.333*t2);
for i=1:1:length(s2);
    if s2(i)<0;
        s2(i)=0;
    end
end
subplot(3,1,2)  %al 2-lea subgrafic
plot(t2,s2),grid
title('Semnal sinusoidal monoalternanta Rezolutie 20ms');
xlabel('Time(sec)')
ylabel('Amplitude')


t3=0:0.002:10;  %pentru rezolutie 2ms
s3=0.8*sin(2*pi*0.333*t3);
for i=1:1:length(s3);
    if s3(i)<0;
        s3(i)=0;
    end
end
subplot(3,1,3)  %se creaza al 3-lea subgrafic
plot(t3,s3),grid 
title('Semnal sinusoidal monoalternanta Rezolutie 2ms');
xlabel('Time(sec)')
ylabel('Amplitude')

end