%The script need to draw pressure plot.
%the initial conditions is x__0
x = linspace(15,70,20);
h = [10.4,9.95,9.5,9.1,8.6,8.0,6.4,6.4,6.4,6.4,6.3,6.3,6.35,6.4,6.5,6.5,6.5,6.9,7.3,8.3,8.4,8.1,8.2,7.5,6.8,6.0,5.4,5.2,5.4];
po_0 = 1.225*10^(-3); 
po_po_0 = [1,0.822,0.669,0.539,0.429,0,338,0.255,0.186,0.136,0.0993,0.725,0.530,0.388,0.28,0.202,0.146, 0.00676, 0.327,0.164, 0.878*10^(-3), 0.481*10^(-3),0.271*10^(-3),0.146,0.757*10^(-4),0.371,0.171,0.696*10^(-5), 0.284];
po = po_po_0*po_0;
h = h*1000;
V = x / 10000;
x_po = linspace(po(1), po(length(po)), 30);
V_0_1 = 20*10^(4);
M_0_1 = 1;
theta_0_1 = pi/12;
V_0_2 = 30*10^4;
M_0_2 = 10^6;
M_0_3 = 10^12;
V_0_3 = 70*10e4;
theta_0_2 = pi/6;
x_0 = [V_0_2, M_0_3, theta_0_1];
[ro, X] = euler_solve(@right_f_de, [10^-8, 1.225e-3], x_0);
P = ro*X(1,:)'.^2 * 0.987*10e-6;
plots = plot(P, log10(ro));
xlabel('P');
ylabel('log(ro)');
set(plots(1), 'LineWidth', 2, 'Color', 'b', 'LineStyle', '-');