function [H1, H2, H3, H4, H5, H6, ...
    H1Z, H2Z, H5Z, H6Z, U1N, U2N, U3N, U4N, U1T, U2T, U3T, U4T] = Calc_H(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, FIG_ON);

[H1, H2, H3, H4, H5, H6, ...
    F1Z, F2Z, F5Z, F6Z, U1N, U2N, U3N, U4N, U1T, U2T, U3T, U4T] = Calc_F(...
    ShiftX, ShiftY, ...
    BaseX, BaseY,...
    PH_1, PH_2, L, H, Z, Z_D, Z_D_S, LED,...
    A, B, G, D, ...
    T1_1, T1_2, T1_3, T1_4, T1_5, T1_6, T1_7, T1_8, T2_1, T2_2, T2_3, T2_4, T2_5, T2_6, T2_7, T2_8, ...
    Al_Th, ...
    FIG_N, 0);

%-------------------------------
H1(2) = -H1(2);
H2(2) = -H2(2);
H3(2) = -H3(2);
H4(2) = -H4(2);
H5(2) = -H5(2);
H6(2) = -H6(2);
%-------------------------------
H1Z  = [F1Z(1), -F1Z(2)];
H2Z  = [F2Z(1), -F2Z(2)];
H5Z  = [F5Z(1), -F5Z(2)];
H6Z  = [F6Z(1), -F6Z(2)];
U1N  = [U1N(1), -U1N(2)];
U2N  = [U2N(1), -U2N(2)];
U3N  = [U3N(1), -U3N(2)];
U4N  = [U4N(1), -U4N(2)];
U1T  = [U1T(1), -U1T(2)];
U2T  = [U2T(1), -U2T(2)];
U3T  = [U3T(1), -U3T(2)];
U4T  = [U4T(1), -U4T(2)];
%-------------------------------
H_DOTS = [H1; H2; H3; H4; H5; H6];
N_H = 6;

if FIG_ON == 1
figure(FIG_N)
for c = 1: N_H - 1
    line([H_DOTS(c, 1) H_DOTS(c + 1, 1)], [H_DOTS(c, 2) H_DOTS(c + 1, 2)]);
end
line([H_DOTS(N_H, 1) H_DOTS(1, 1)], [H_DOTS(N_H, 2) H_DOTS(1, 2)]);

text( (H_DOTS(1, 1) + H_DOTS(4, 1))/2, (H_DOTS(1, 2) + H_DOTS(4, 2))/2, 'H');

line([H1Z(1) H2Z(1)], [H1Z(2) H2Z(2)], 'color', 'RED');
line([H5Z(1) H6Z(1)], [H5Z(2) H6Z(2)], 'color', 'RED');


line([U1N(1) U2N(1)], [U1N(2) U2N(2)], 'color', 'GREEN');
line([U2N(1) U3N(1)], [U2N(2) U3N(2)], 'color', 'GREEN');
line([U3N(1) U4N(1)], [U3N(2) U4N(2)], 'color', 'GREEN');
line([U4N(1) U1N(1)], [U4N(2) U1N(2)], 'color', 'GREEN');

line([U1T(1) U2T(1)], [U1T(2) U2T(2)], 'color', 'GREEN');
line([U2T(1) U3T(1)], [U2T(2) U3T(2)], 'color', 'GREEN');
line([U3T(1) U4T(1)], [U3T(2) U4T(2)], 'color', 'GREEN');
line([U4T(1) U1T(1)], [U4T(2) U1T(2)], 'color', 'GREEN');

end

