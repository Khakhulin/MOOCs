function y_z = z_interpolate (x)
z = [0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,35,40,...
45,50,55,60,65,70,75,80,85,90,95];
po_0 = 1.225*10^(-3);  
po_po_0 = [1,0.822,0.669,0.539,0.429,0,338,0.255,0.186,0.136,0.993*10^(-1),...
0.725*10^(-1),0.530*10^(-1),0.388*10^(-1),0.28*10^(-1),0.202*10^(-1),0.146*10^(-1),...
 0.676*10^(-2), 0.327*10^(-2),0.164*10^(-2), 0.878*10^(-3), 0.481*10^(-3),0.271*10^(-3),...
 0.146*10^(-3),0.757*10^(-4),0.371*10^(-4),0.171*10^(-4),0.696*10^(-5), 0.284*10^(-5)];
po = po_po_0.*po_0;
z = z.*1e5;
y_z = spline(po,z,x);
end