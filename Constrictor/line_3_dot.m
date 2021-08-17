function [T1] = line_3_dot(fig, T1, T2)
    figure(fig);
    line([T1(1), T2(1)], [T1(2), T2(2)], [T1(3), T2(3)])
end
