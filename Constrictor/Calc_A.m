function [A1, A2, A3, A4] = Calc_A(...
    BaseX, BaseY, ...
    Ph1, Ph2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, FIG_ON)
%=============

L45 = Lngth(T1_4, T1_5);
L44 = Lngth(T1_4, T2_4);

A1 = [0, -L44 / 2];
A2 = [L45, -L44 / 2];
A3 = [L45,  L44 / 2];
A4 = [0,  L44 / 2];

%-------------------------------
A_DOTS = [A1; A2; A3; A4];
N_A = 4;

if FIG_ON == 1
figure(FIG_N)
for c = 1: N_A - 1
    line([A_DOTS(c, 1) A_DOTS(c + 1, 1)], [A_DOTS(c, 2) A_DOTS(c + 1, 2)]);
end
line([A_DOTS(N_A, 1) A_DOTS(1, 1)], [A_DOTS(N_A, 2) A_DOTS(1, 2)]);

text( (A_DOTS(1, 1) + A_DOTS(3, 1))/2, (A_DOTS(1, 2) + A_DOTS(3, 2))/2, 'A');
end
