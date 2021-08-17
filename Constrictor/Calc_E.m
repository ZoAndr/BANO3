function [E1, E2, E3, E4, E5, E6] = Calc_E(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, FIG_ON);

rad = 180 / pi;

E12 = LED *sin(D / rad) / cos ((A - B) / rad);
E23 = (   (T1_3(1) - T1_2(1))^2   +   (T1_3(2) - T1_2(2))^2   )^0.5;

E_Lx = Lngth(T1_4, T2_4) / 2;

E_1_X =  -E12 - E23;
E_1_Y =  Z_D;
E_2_X =  -E12;
E_2_Y =  Z_D;
E_3_X =  0;
E_3_Y =  E_Lx; 
E_4_X =  0;
E_4_Y = -E_Lx; 
E_5_X =  -E12;
E_5_Y = -Z_D; 
E_6_X =  -E12 - E23;
E_6_Y = -Z_D; 


%-------------------------------
E1 = [E_1_X, E_1_Y];
E2 = [E_2_X, E_2_Y];
E3 = [E_3_X, E_3_Y];
E4 = [E_4_X, E_4_Y];
E5 = [E_5_X, E_5_Y];
E6 = [E_6_X, E_6_Y];

%-------------------------------
E_DOTS = [E1; E2; E3; E4; E5; E6];
E_DOTS(:, 1) = E_DOTS(:, 1) + ShiftX;
E_DOTS(:, 2) = E_DOTS(:, 2) + ShiftY;
E1 = E_DOTS(1, :); E2 = E_DOTS(2, :); E3 = E_DOTS(3, :); E4 = E_DOTS(4, :); E5 = E_DOTS(5, :); E6 = E_DOTS(6, :);

N_E = 6;

if FIG_ON == 1
figure(FIG_N)
for c = 1: N_E - 1
    line([E_DOTS(c, 1) E_DOTS(c + 1, 1)], [E_DOTS(c, 2) E_DOTS(c + 1, 2)]);
end
line([E_DOTS(N_E, 1) E_DOTS(1, 1)], [E_DOTS(N_E, 2) E_DOTS(1, 2)]);

text( (E_DOTS(1, 1) + E_DOTS(4, 1))/2, (E_DOTS(1, 2) + E_DOTS(4, 2))/2, 'E');
end