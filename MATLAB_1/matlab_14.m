clear all,close all,clc
mu=0.5;sigma=3;
noise=sigma*randn(300000,1)+mu;
figure(1)
histogram(noise,20),grid on,hold on
mu=-3.5;sigma=2;
noise=sigma*randn(300000,1)+mu;
histogram(noise,20,"FaceColor",'r')
