function [I1, I2, I3, I4] = Calc_I(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, FIG_ON);

I1 = [ShiftX,  Z_D];
I2 = [ShiftX - PH_1,  Z_D];
I3 = [ShiftX - PH_1, -Z_D];
I4 = [ShiftX, -Z_D];

I_DOTS = [I1; I2; I3; I4];
N_I = 4;

if FIG_ON == 1
figure(FIG_N)
for c = 1: N_I - 1
    line([I_DOTS(c, 1) I_DOTS(c + 1, 1)], [I_DOTS(c, 2) I_DOTS(c + 1, 2)]);
end
line([I_DOTS(N_I, 1) I_DOTS(1, 1)], [I_DOTS(N_I, 2) I_DOTS(1, 2)]);

text( (I_DOTS(1, 1) + I_DOTS(3, 1))/2, (I_DOTS(1, 2) + I_DOTS(3, 2))/2, 'I');
end