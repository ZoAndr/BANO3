function [G1, G2, G3, G4] = Calc_G(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, FIG_ON);

G1 = [ShiftX,  Z_D];
G2 = [ShiftX + PH_2,  Z_D];
G3 = [ShiftX + PH_2, -Z_D];
G4 = [ShiftX, -Z_D];

G_DOTS = [G1; G2; G3; G4];
N_G = 4;

if FIG_ON == 1
figure(FIG_N)
for c = 1: N_G - 1
    line([G_DOTS(c, 1) G_DOTS(c + 1, 1)], [G_DOTS(c, 2) G_DOTS(c + 1, 2)]);
end
line([G_DOTS(N_G, 1) G_DOTS(1, 1)], [G_DOTS(N_G, 2) G_DOTS(1, 2)]);

text( (G_DOTS(1, 1) + G_DOTS(3, 1))/2, (G_DOTS(1, 2) + G_DOTS(3, 2))/2, 'G');
end