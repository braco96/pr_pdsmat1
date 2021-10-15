%% EJERCICIO 1 %%
figure(1);

hold on;

[y1,tout1]=genera_sinusoide(0,2,0.01,pi,0);
subplot(3,1,1)
plot(tout1,y1);

[y2,tout2]=genera_sinusoide(0,2,0.01,2*pi,0);
subplot(3,1,2)
plot(tout2,y2);


[y3,tout3]=genera_sinusoide(0,2,0.01,4*pi,0);
subplot(3,1,3)
plot(tout3,y3);
hold off;

%% EJERCICIO 2 %%
figure(2);

hold on;

[y1,tout1]=genera_exponencial(0,4,0.01,1/2);
subplot(4,1,1);
plot(tout1,y1);

[y2,tout2]=genera_exponencial(0,4,0.01,1/4);
subplot(4,1,2);
plot(tout2,y2);


[y3,tout3]=genera_exponencial(0,4,0.01,exp(1i*pi));
subplot(4,1,3)
plot(tout3,real(y3));
subplot(4,1,4)
plot(tout3,imag(y3));

hold off;

%% EJERCICIO 3 %%
figure(3);
hold on;

tiempo = -50:50;


primerPulso = zeros(1, length(-50:-11));
segundoPulso = ones(1, length(-10:10));
tercerPulso = zeros(1, length(11:50));
pulso = horzcat(primerPulso,segundoPulso,tercerPulso);
deltas = zeros(1, length(-50:50));
% La primera posicion del array delta corresponde
% al tiempo -50. Por tanto el tiempo -20 corresponde la
% posicion 31, y el tiempo +20 corresponde a la  pos 71

deltas(71) = 1;
deltas(31) = -1;

resultado1 = conv(deltas, pulso);
plot(1:length(resultado1),resultado1);


hold off;