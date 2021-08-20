function [B1, B2, B3, B4, LED, FH] = Calc_B_PCB(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    PCB_W, ...
    FIG_N, FIG_ON);

rad = 180 / pi;


L45i = (    (  T1_4(1) - T1_5(1) )^2   +   (  T1_4(2) - T1_5(2) )^2   +   (  T1_4(3) - T1_5(3) )^2      )^0.5 ;
L45  = Lngth(T1_4, T1_5);
B_Lx = Lngth(T1_4, T2_4) / 2;

Tan_A = sin(D / rad) * tan((A - B) / rad);
Tan_B = sin(D / rad) * tan((G+B) / rad);


B_1_X = -LED * Tan_A + PCB_W * 1/(1 - Tan_A^2)^0.5;
B_1_Y =  LED + B_Lx;
B_2_X =  L45 + LED * Tan_B - PCB_W * 1/(1 - Tan_B^2)^0.5;
B_2_Y =  LED + B_Lx;
B_3_X =  L45 - PCB_W * 1 /(1 - Tan_B^2)^0.5;
B_3_Y =  B_Lx; 
B_4_X =  0 + PCB_W * 1/(1 - Tan_A^2)^0.5;
B_4_Y =  B_Lx; 



B_L12 = ((B_1_X - B_4_X)^2 + (B_1_Y - B_4_Y)^2)^.5;
B_L23 = ((B_2_X - B_3_X)^2 + (B_2_Y - B_3_Y)^2)^.5;

L56 = (    (  T1_6(1) - T1_5(1) )^2   +   (  T1_6(2) - T1_5(2) )^2   +   (  T1_6(3) - T1_5(3) )^2      )^0.5 ;


L34_1 = (    (  T1_4(1) - T1_3(1) )^2   +   (  T1_4(2) - T1_3(2) )^2   +   (  T1_4(3) - T1_3(3) )^2      )^0.5 ;

L34_2 = (   LED^2 + ( LED * sin(D / rad) * tan((A - B) / rad) )^2  )^0.5 ;

if abs(L34_1 - L34_2) > 1e-10
    disp ('Line 34 in B is WRONG !');
end
if abs(B_L12 - L34_2) > 1e-10
    disp ('Line 34 in B is WRONG !');
end
if abs(B_L23 - L56) > 1e-10
    disp ('Line 34 in B is WRONG !');
end

%-------------------------------
B1 = [B_1_X, B_1_Y];
B2 = [B_2_X, B_2_Y];
B3 = [B_3_X, B_3_Y];
B4 = [B_4_X, B_4_Y];

%-------------------------------
B_DOTS = [B1; B2; B3; B4];

% LEDs positions
dLED = 6;
LEDx_Start = 6;
LED_y = (B_1_Y + B_3_Y) / 2;
LEDx = (0:5) * dLED + LEDx_Start + B_4_X;

LED = [LEDx', ones(6, 1) * LED_y];

% Fixing holes
FH(1, 1) = B_4_X + 1;
FH(1, 2) = LED_y;
FH(2, 1) = B_3_X - 1;
FH(2, 2) = LED_y;

B_DOTS(:, 1) = B_DOTS(:, 1) + ShiftX;
B_DOTS(:, 2) = B_DOTS(:, 2) + ShiftY;

B1 = B_DOTS(1, :); B2 = B_DOTS(2, :); B3 = B_DOTS(3, :); B4 = B_DOTS(4, :);
N_B = 4;

if FIG_ON == 1
figure(FIG_N)
for c = 1: N_B - 1
    line([B_DOTS(c, 1) B_DOTS(c + 1, 1)], [B_DOTS(c, 2) B_DOTS(c + 1, 2)], 'color', 'RED');
end
line([B_DOTS(N_B, 1) B_DOTS(1, 1)], [B_DOTS(N_B, 2) B_DOTS(1, 2)], 'color', 'RED');

text( (B_DOTS(1, 1) + B_DOTS(3, 1))/2 + 3.5, (B_DOTS(1, 2) + B_DOTS(3, 2))/2 + 0.5, 'PCB_B');

for c = 1: 6
    circle(LED(c, 1), LED(c, 2), 3.5/2, 'RED')
end
for c = 1: 2
    circle(FH(c, 1),FH(c, 2), 1, 'GREEN')
end
end
