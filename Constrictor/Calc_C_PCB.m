function [C1, C2, C3, C4, C5, C6, LED, FH] = Calc_C_PCB(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    Side_GAP, BOTTOM_GAP, ...
    FIG_N, FIG_ON);

rad = 180 / pi;

C12 = LED *sin(D / rad) / cos ((G + B) / rad);
C23 = (   (T1_7(1) - T1_6(1))^2   +   (T1_7(2) - T1_6(2))^2   )^0.5;

L45  = Lngth(T1_4, T1_5);
B_Lx = Lngth(T1_4, T2_4) / 2;

C_1_X =  L45;
C_1_Y =  B_Lx;
C_2_X =  L45 + C12;
C_2_Y =  Z_D - Side_GAP;
C_3_X =  L45 + C12 + C23  - BOTTOM_GAP;
C_3_Y =  Z_D - Side_GAP; 
C_4_X =  L45 + C12 + C23  - BOTTOM_GAP;
C_4_Y = -Z_D + Side_GAP; 
C_5_X =  L45 + C12;
C_5_Y = -Z_D + Side_GAP; 
C_6_X =  L45;
C_6_Y = -B_Lx; 


%-------------------------------
C1 = [C_1_X, C_1_Y];
C2 = [C_2_X, C_2_Y];
C3 = [C_3_X, C_3_Y];
C4 = [C_4_X, C_4_Y];
C5 = [C_5_X, C_5_Y];
C6 = [C_6_X, C_6_Y];

%-------------------------------
C_DOTS = [C1; C2; C3; C4; C5; C6];
C_DOTS(:, 1) = C_DOTS(:, 1) + ShiftX;
C_DOTS(:, 2) = C_DOTS(:, 2) + ShiftY;

C1 = C_DOTS(1, :); C2 = C_DOTS(2, :); C3 = C_DOTS(3, :); C4 = C_DOTS(4, :); C5 = C_DOTS(5, :); C6 = C_DOTS(6, :);

N_C = 6;

% LEDs positions
LED(1, 1) = C_DOTS(1, 1) + 6;
LED(1, 2) = 0;

% Fixing holes
FH(1, 1) =  C_DOTS(1, 1) + 7;
FH(1, 2) =  6;
FH(2, 1) =  C_DOTS(1, 1) + 7;
FH(2, 2) = -6;

if FIG_ON == 1
    figure(FIG_N)
    for c = 1: N_C - 1
        line([C_DOTS(c, 1) C_DOTS(c + 1, 1)], [C_DOTS(c, 2) C_DOTS(c + 1, 2)], 'color', 'RED');
    end
    line([C_DOTS(N_C, 1) C_DOTS(1, 1)], [C_DOTS(N_C, 2) C_DOTS(1, 2)], 'color', 'RED');

    text( (C_DOTS(1, 1) + C_DOTS(4, 1))/2 - 3, (C_DOTS(1, 2) + C_DOTS(4, 2))/2 + 5, 'PCB_C');
    
    circle(LED(1, 1), LED(1, 2), 3.5/2, 'RED');
    for c = 1: 2
        circle(FH(c, 1),FH(c, 2), 1, 'GREEN')
    end
end