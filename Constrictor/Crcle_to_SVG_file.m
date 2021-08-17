function [] = Crcle_to_SVG_file(fid, XY, R)

fprintf(fid, ['         <circle'  '\n']);
fprintf(fid, ['            style="opacity:1;fill:none;fill-opacity:1;stroke:#0000ff;stroke-width:0.25;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0"'  '\n']);
fprintf(fid, ['            id="path10"'  '\n']);
fprintf(fid, ['            cx="' num2str(XY(1)) '"'  '\n']);
fprintf(fid, ['            cy="' num2str(XY(2)) '"'  '\n']);
fprintf(fid, ['            r="' num2str(R) '" />'  '\n']);