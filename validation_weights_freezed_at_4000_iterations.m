clc
clear all
close all
load final_weights_4000_iterations
load individual_inputs
x1=(x1-min(x1))./(max(x1)-min(x1));
x2=(x2-min(x2))./(max(x2)-min(x2));
x3=(x3-min(x3))./(max(x3)-min(x3));
x4=(x4-min(x4))./(max(x4)-min(x4));
x5=(x5-min(x5))./(max(x5)-min(x5));
x6=(x6-min(x6))./(max(x6)-min(x6));
x7=(x7-min(x7))./(max(x7)-min(x7));
x8=(x8-min(x8))./(max(x8)-min(x8));
x9=(x9-min(x9))./(max(x9)-min(x9));
x10=(x10-min(x10))./(max(x10)-min(x10));
load stock_output
yd=stock_output(:,1);
yd=(yd-min(yd))./(max(yd)-min(yd));
for k=1:100
    %%%%%%%%%%%%%%%%%%%%%% for identifier %%%%%%%%%%%%%%%%%%%
    net1=tansig(x1(k)*w1+x2(k)*w2+x3(k)*w3+x4(k)*w4+x5(k)*w5+x6(k)*w6+x7(k)*w7+x8(k)*w8+x9(k)*w9+x10(k)*w10-wh); % 20x1 vector
    yn(k)=purelin(net1'*w11-wo); 
end
 figure
plot(yn,'r')
hold on
plot(yd,'g')