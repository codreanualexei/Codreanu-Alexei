
function bex3()

t=0:0.002:15; %rezolutia 2ms
niv = [ -3 -1 1 3 ];
figure(1)
hold on
title('Semnal Dreptunghiular multinivel aleator Rezolutie 2ms')
xlabel('Time (s)')
ylabel('Amplitude')
for n=0:0.25:40 % de ce 40? 0.25 ? (Vedeti in fisierul "NotePad" din file)
    y = datasample(niv, 1)
    plot(t, y*rectpuls(t-n, 0.25)) %trasarea graficului
end


t=0:0.02:15;    %rezolutie temporala 20ms
niv = [ -3 -1 1 3 ];
figure(2)
hold on
title('Semnal Dreptunghiular multinivel aleator Rezolutie 20ms')
xlabel('Time (s)')
ylabel('Amplitude')
for n=0:0.25:40
    y = datasample(niv, 1)
    plot(t, y*rectpuls(t-n, 0.25))
end


t=0:0.2:15; %rezolutie temporala 200ms
niv = [ -3 -1 1 3 ];
figure(3)
hold on
title('Semnal Dreptunghiular multinivel aleator Rezolutie 200ms')
xlabel('Time (s)')
ylabel('Amplitude')
for n=0:0.25:40
    y = datasample(niv, 1)
    plot(t, y*rectpuls(t-n, 0.25))
end


end