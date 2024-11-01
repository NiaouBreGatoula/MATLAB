clear all,close all,clc
t=-4:.1:4;
x=exp(t);
N=64;
partition=0:N-1; %64 ζώνες κβάντισης
codebook=0:N;
[index,quants]=quantiz(x,partition,codebook);
plot(t,x,'x',t,quants,'.'),grid on
D1=sum((x-quants).^2)/length(x)
x_comp=compand(quants,255,max(quants),'mu/compressor');
x_quantiz=quantiz(x_comp,partition,codebook);
x_decomp=compand(x_quantiz,255,max(x_quantiz),'mu/expander');
D2=sum((x_decomp-x).^2)/length(x)