function [D1, D2, D3, D4, LED, FH] = Calc_D(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    PCB_W, ...
    FIG_N, FIG_ON);

[D1, D2, D3, D4] = Calc_B_PCB(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    PCB_W, ...
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

% LEDs positions
dLED = 6;
LEDx_Start = 6;
LED_y = (D1(2) + D3(2)) / 2;
LEDx = (0:5) * dLED + LEDx_Start + D4(1);
LED = [LEDx', ones(6, 1) * LED_y];

% Fixing holes
FH(1, 1) = D4(1) + 1;
FH(1, 2) = LED_y;
FH(2, 1) = D3(1) - 1;
FH(2, 2) = LED_y;

if FIG_ON == 1
    figure(FIG_N)
    for c = 1: N_D - 1
        line([D_DOTS(c, 1) D_DOTS(c + 1, 1)], [D_DOTS(c, 2) D_DOTS(c + 1, 2)], 'color', 'RED');
    end
    line([D_DOTS(N_D, 1) D_DOTS(1, 1)], [D_DOTS(N_D, 2) D_DOTS(1, 2)], 'color', 'RED');

    text( (D_DOTS(1, 1) + D_DOTS(3, 1))/2 + 3.5, (D_DOTS(1, 2) + D_DOTS(3, 2))/2 + 0.5, 'PCB_D');
    for c = 1: 6
        circle(LEDx(c),LED_y,3.5/2, 'RED')
    end
    for c = 1: 2
        circle(FH(c, 1),FH(c, 2), 1, 'GREEN')
    end
end
