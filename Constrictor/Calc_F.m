function [F1, F2, F3, F4, F5, F6, ...
    F1Z, F2Z, F5Z, F6Z, U1N, U2N, U3N, U4N, U1T, U2T, U3T, U4T] = Calc_F(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, FIG_ON);


U_D = Z_D - 1 * Al_Th;

rad = 180 / pi;

F23 = Lngth(T1_2, T1_3);
F12 = PH_1;

F36 = Lngth(T1_3, T1_6);

F67 = Lngth(T1_7, T1_6);
F78 = PH_2;

F_3_X =  ShiftX;
F_3_Y =  ShiftY; 
F_2_X =  ShiftX - F23 * sin((A - B) / rad);
F_2_Y =  ShiftY + F23 * cos((A - B) / rad);
F_1_X =  F_2_X + F12 * sin(B / rad);
F_1_Y =  F_2_Y + F12 * cos(B / rad);
F_4_X =  ShiftX + F36;
F_4_Y = ShiftY; 
F_5_X = F_4_X + F67 * sin((G + B) / rad);
F_5_Y = F_4_Y + F67 * cos((G + B) / rad); 
F_6_X = F_5_X + F78 * sin(B / rad);
F_6_Y = F_5_Y + F78 * cos(B / rad); 

F_1Z_X = F_1_X + (Al_Th) * cos(B / rad);
F_1Z_Y = F_1_Y - (Al_Th) * sin(B / rad);
F_2Z_X = F_2_X + Al_Th / sin((A) / rad) * sin((A - B) / rad);
F_2Z_Y = F_2_Y - Al_Th / sin((A) / rad) * cos((A - B) / rad);

F_6Z_X = F_6_X - (Al_Th) * cos(B / rad);
F_6Z_Y = F_6_Y + (Al_Th) * sin(B / rad);
F_5Z_X = F_5_X - Al_Th / sin((A) / rad) * sin((G + B) / rad);
F_5Z_Y = F_5_Y - Al_Th / sin((A) / rad) * cos((G + B) / rad);

%-------------------------------
F1 = [F_1_X, F_1_Y];
F2 = [F_2_X, F_2_Y];
F3 = [F_3_X, F_3_Y];
F4 = [F_4_X, F_4_Y];
F5 = [F_5_X, F_5_Y];
F6 = [F_6_X, F_6_Y];

%-------------------------------
F_DOTS = [F1; F2; F3; F4; F5; F6];
N_F = 6;


U1_1X = F_1_X; U1_1Y = F_1_Y;
U1_2X = F_2_X; U1_2Y = F_2_Y;
U1_3X = F_2_X - U_D * cos(B / rad);
U1_3Y = F_2_Y + U_D * sin(B / rad);
U1_4X = F_1_X - U_D * cos(B / rad);
U1_4Y = F_1_Y + U_D * sin(B / rad);

U2_3X = F_5_X; U2_3Y = F_5_Y;
U2_4X = F_6_X; U2_4Y = F_6_Y;
U2_2X = F_5_X + U_D * cos(B / rad);
U2_2Y = F_5_Y - U_D * sin(B / rad);
U2_1X = F_6_X + U_D * cos(B / rad);
U2_1Y = F_6_Y - U_D * sin(B / rad);

F1Z = [F_1Z_X, F_1Z_Y];
F2Z = [F_2Z_X, F_2Z_Y];
F5Z = [F_5Z_X, F_5Z_Y];
F6Z = [F_6Z_X, F_6Z_Y];
U1N  = [U1_1X, U1_1Y];
U2N  = [U1_2X, U1_2Y];
U3N  = [U1_3X, U1_3Y];
U4N  = [U1_4X, U1_4Y];
U1T  = [U2_1X, U2_1Y];
U2T  = [U2_2X, U2_2Y];
U3T  = [U2_3X, U2_3Y];
U4T  = [U2_4X, U2_4Y];




if FIG_ON == 1
figure(FIG_N)
for c = 1: N_F - 1
    line([F_DOTS(c, 1) F_DOTS(c + 1, 1)], [F_DOTS(c, 2) F_DOTS(c + 1, 2)]);
end
line([F_DOTS(N_F, 1) F_DOTS(1, 1)], [F_DOTS(N_F, 2) F_DOTS(1, 2)]);

text( (F_DOTS(1, 1) + F_DOTS(4, 1))/2, (F_DOTS(1, 2) + F_DOTS(4, 2))/2, 'F');

line([F_1Z_X F_2Z_X], [F_1Z_Y F_2Z_Y], 'color', 'RED');
line([F_5Z_X F_6Z_X], [F_5Z_Y F_6Z_Y], 'color', 'RED');


line([U1_1X U1_2X], [U1_1Y U1_2Y], 'color', 'GREEN');
line([U1_2X U1_3X], [U1_2Y U1_3Y], 'color', 'GREEN');
line([U1_3X U1_4X], [U1_3Y U1_4Y], 'color', 'GREEN');
line([U1_4X U1_1X], [U1_4Y U1_1Y], 'color', 'GREEN');

line([U2_1X U2_2X], [U2_1Y U2_2Y], 'color', 'GREEN');
line([U2_2X U2_3X], [U2_2Y U2_3Y], 'color', 'GREEN');
line([U2_3X U2_4X], [U2_3Y U2_4Y], 'color', 'GREEN');
line([U2_4X U2_1X], [U2_4Y U2_1Y], 'color', 'GREEN');

end



