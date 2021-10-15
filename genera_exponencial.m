function [y,tout]=genera_exponencial (n0,n1,paso,b) 
tout=n0:paso:n1;
y =b.^ tout;
end