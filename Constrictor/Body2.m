% clear all
% close all
% clc

Popona = 1;
Slon   = 2;


A = 30;
B = 14.00;
G = 10;
D = 45;

H_PCB = 1.05;


rad = 180 / pi;

Type = Popona;
%Type = Slon;
if Type == Slon
    Al_Th1 = 0.41;
    Al_Th = 1.02;
    PH_1 = 8.1;
    PH_2 = 6.6;
    H = 23.0 - (H_PCB + Al_Th) * cos(B / rad) / cos(D / rad);
    L =  56.0;% + 2 * Al_Th1;
else
    Al_Th = 0.2;
    PH_1 = 5.1 + H_PCB / sin(A / rad);
    PH_2 = -1.0 + H_PCB / sin(G / rad);
    H = 26.0;
    L =  56.0 + 0 * Al_Th + 0 * Al_Th + 0.0;
end

Z = 17.0;
Z_D = Z / 2;

LED = 7;



Z_D_S = Z_D - LED * cos(D / rad);

% Format [ X, Y];

X_1 = 0; Y_1 = 0
X_2 = 0; Y_2 = PH_1;

X_4 = ( H - PH_1) * tan( A / rad ); Y_4 = H;
T1_2 = [X_2, Y_2,  -Z_D];
T1_4 = [X_4, Y_4,  -4.5];

%---
Wx = T1_4(1);
Wy = T1_4(2) - LED * sin(D / rad) / cos(B / rad);
[Wx Wy];

T3x = (   Wy - T1_2(2) + Wx * tan(B / rad) + T1_2(1) / tan(A / rad)   )   /   (tan(B / rad) + 1/tan(A / rad));
T3y1 = Wy - (T3x - Wx) * tan(B / rad);
T3y2 = T1_2(2) + (T3x - T1_2(1)) * 1/tan(A / rad);
[T3y1 T3y2];
%---

X_3 = T3x; Y_3 = T3y1;

X_7 = L; Y_7 = PH_2;

K_Bt = tan( B / rad );
K_Gm = 1/tan( G / rad );

X_5 = (Y_4 - Y_7 + K_Bt * X_4 - L * K_Gm) / (K_Bt - K_Gm);
Y_5 = Y_4 - K_Bt * (X_5 - X_4);
T_5 = [X_5 Y_5];

X_6 = (Y_3 - Y_7 + K_Bt * X_3 - L * K_Gm) / (K_Bt - K_Gm);
Y_6 = Y_3 - K_Bt * (X_6 - X_3);

X_8 = L; Y_8 = 0;

T1_1 = [X_1, Y_1,  -Z_D];
T1_2 = [X_2, Y_2,  -Z_D];
T1_3 = [X_3, Y_3,  -Z_D];
T1_4 = [X_4, Y_4,  -Z_D_S];
T1_5 = [X_5, Y_5,  -Z_D_S];
T1_6 = [X_6, Y_6,  -Z_D];
T1_7 = [X_7, Y_7,  -Z_D];
T1_8 = [X_8, Y_8,  -Z_D];

T2_1 = [X_1, Y_1,  Z_D];
T2_2 = [X_2, Y_2,  Z_D];
T2_3 = [X_3, Y_3,  Z_D];
T2_4 = [X_4, Y_4,  Z_D_S];
T2_5 = [X_5, Y_5,  Z_D_S];
T2_6 = [X_6, Y_6,  Z_D];
T2_7 = [X_7, Y_7,  Z_D];
T2_8 = [X_8, Y_8,  Z_D];

%=============
Params = [PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED];
Angles = [A, B, G, D];
T = [T1_1', T1_2', T1_3', T1_4', T1_5', T1_6', T1_7', T1_8', ...
     T2_1', T2_2', T2_3', T2_4', T2_5', T2_6', T2_7', T2_8'];
%=============
figure(100)

fg = 100;

line_3_dot(fg, T1_1, T1_2)
line_3_dot(fg, T1_2, T1_3)
line_3_dot(fg, T1_3, T1_4)
line_3_dot(fg, T1_4, T1_5)
line_3_dot(fg, T1_5, T1_6)
line_3_dot(fg, T1_6, T1_7)
line_3_dot(fg, T1_7, T1_8)
line_3_dot(fg, T1_8, T1_1)

line_3_dot(fg, T2_1, T2_2)
line_3_dot(fg, T2_2, T2_3)
line_3_dot(fg, T2_3, T2_4)
line_3_dot(fg, T2_4, T2_5)
line_3_dot(fg, T2_5, T2_6)
line_3_dot(fg, T2_6, T2_7)
line_3_dot(fg, T2_7, T2_8)
line_3_dot(fg, T2_8, T2_1)

line_3_dot(fg, T1_1, T2_1)
line_3_dot(fg, T1_2, T2_2)
line_3_dot(fg, T1_3, T2_3)
line_3_dot(fg, T1_4, T2_4)
line_3_dot(fg, T1_5, T2_5)
line_3_dot(fg, T1_6, T2_6)
line_3_dot(fg, T1_7, T2_7)
line_3_dot(fg, T1_8, T2_8)

line_3_dot(fg, T1_3, T1_6)
line_3_dot(fg, T2_3, T2_6)

xlim([-10 90]); ylim([-40 50]); zlim([-45 45]);

FIG_N = 202;

BaseX = 0; BaseY = 0;
[A1, A2, A3, A4] = Calc_A(...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 1);

ShiftX = 0; ShiftY = D / 90 * Al_Th;
[B1, B2, B3, B4] = Calc_B(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 1);

ShiftX = (90 - G) / 90 * Al_Th; ShiftY = 0;
[C1, C2, C3, C4, C5, C6] = Calc_C(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 1);

ShiftX = -(90 - A) / 90 * Al_Th; ShiftY = 0;
[E1, E2, E3, E4, E5, E6] = Calc_E(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 1);

% (B4(1) - B1(1))^2 + (B4(2) - B1(2))^2 == (E2(1) - E3(1))^2 + (E2(2) - E3(2))^2
ShiftX = 0; ShiftY = D / 90 * Al_Th;
[D1, D2, D3, D4] = Calc_D(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 1);

ShiftX = (90 - G) / 90 * Al_Th; ShiftY = 0;

ShiftX = C3(1) + G / 90 * Al_Th; ShiftY = 0;
[G1, G2, G3, G4] = Calc_G(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 1);

ShiftX = -(90 - A) / 90 * Al_Th;
ShiftX = E1(1) - A / 90 * Al_Th; ShiftY = 0;
[I1, I2, I3, I4] = Calc_I(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 1);

ShiftX = B1(1);
ShiftY = B1(2) + (90 - D) / 90 * Al_Th;
[F1, F2, F3, F4, F5, F6, ...
    F1Z, F2Z, F5Z, F6Z, UF1N, UF2N, UF3N, UF4N, UF1T, UF2T, UF3T, UF4T] = Calc_F(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 1);

[H1, H2, H3, H4, H5, H6, ...
    H1Z, H2Z, H5Z, H6Z, UH1N, UH2N, UH3N, UH4N, UH1T, UH2T, UH3T, UH4T] = Calc_H(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 1);
figure(FIG_N); grid on;



DOTS_A = [A1; A2; A3; A4];
DOTS_B = [B1; B2; B3; B4];
DOTS_C = [C1; C2; C3; C4; C5; C6];
DOTS_D = [D1; D2; D3; D4];
DOTS_E = [E1; E2; E3; E4; E5; E6];
DOTS_F = [F1; F2; F3; F4; F5; F6];
DOTS_G = [G1; G2; G3; G4];
DOTS_H = [H1; H2; H3; H4; H5; H6];
DOTS_I = [I1; I2; I3; I4];

DOTS_U1 = [UF1N; UF2N; UF3N; UF4N];
DOTS_U2 = [UF1T; UF2T; UF3T; UF4T];
DOTS_U3 = [UH1N; UH2N; UH3N; UH4N];
DOTS_U4 = [UH1T; UH2T; UH3T; UH4T];

Crc_Ph_1 = 3;
Crc_Ph_2 = 2;
Crc_W    = 11/2;
Crc_R    = 2.2 / 2;
Crc_UL_1 = [        I2(1) + Crc_Ph_1, I2(2) - (Z_D - Crc_W)];
Crc_UL_2 = [DOTS_U1(1, 1) - (Z_D - Crc_W) * cos(B / rad) - Crc_Ph_1 * sin(B / rad), ...
            DOTS_U1(1, 2) - Crc_Ph_1 * cos(B / rad) + (Z_D - Crc_W) * sin(B / rad)];
Crc_TL_1 = [        G2(1) - Crc_Ph_2, G2(2) - (Z_D - Crc_W)];
Crc_TL_2 = [DOTS_U2(4, 1) + (Z_D - Crc_W) * cos(B / rad) - Crc_Ph_2 * sin(B / rad), ...
            DOTS_U2(4, 2) - Crc_Ph_2 * cos(B / rad) - (Z_D - Crc_W) * sin(B / rad)];

Crc_UR_1 = [Crc_UL_1(1) -Crc_UL_1(2)];
Crc_UR_2 = [Crc_UL_2(1) -Crc_UL_2(2)];
Crc_TR_1 = [Crc_TL_1(1) -Crc_TL_1(2)];
Crc_TR_2 = [Crc_TL_2(1) -Crc_TL_2(2)];

viscircles(Crc_UL_1,1)
viscircles(Crc_TL_1,1)
viscircles(Crc_UL_2,1)
viscircles(Crc_TL_2,1)
viscircles(Crc_UR_1,1)
viscircles(Crc_TR_1,1)
viscircles(Crc_UR_2,1)
viscircles(Crc_TR_2,1)

Make_SVG_file

