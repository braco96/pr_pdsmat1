

function [y,tout]=genera_sinusoide (n0,n1,paso,w0,phi) 
tout=n0:paso:n1;
% Suponemos que la amplitud es 1 ante la ausencia del parametro.
y=sin((w0*tout)+phi);
end