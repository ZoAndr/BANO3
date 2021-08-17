function [D1, D2, D3, D4] = Calc_D(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, FIG_ON);

[D1, D2, D3, D4] = Calc_B(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 0);
%-------------------------------
D1(2) = -D1(2);
D2(2) = -D2(2);
D3(2) = -D3(2);
D4(2) = -D4(2);

D_DOTS = [D1; D2; D3; D4];
%D_DOTS(:, 1) = D_DOTS(:, 1) + ShiftX;
%D_DOTS(:, 2) = D_DOTS(:, 2) + ShiftY;
D1 = D_DOTS(1, :); D2 = D_DOTS(2, :); D3 = D_DOTS(3, :); D4 = D_DOTS(4, :);
N_D = 4;

if FIG_ON == 1
figure(FIG_N)
for c = 1: N_D - 1
    line([D_DOTS(c, 1) D_DOTS(c + 1, 1)], [D_DOTS(c, 2) D_DOTS(c + 1, 2)]);
end
line([D_DOTS(N_D, 1) D_DOTS(1, 1)], [D_DOTS(N_D, 2) D_DOTS(1, 2)]);

text( (D_DOTS(1, 1) + D_DOTS(3, 1))/2, (D_DOTS(1, 2) + D_DOTS(3, 2))/2, 'D');
end
