function [] = Dots_to_SVG_file(fid, DOTS)

N_Dots = max(size(DOTS));

 for c = 1: N_Dots - 1
%    fprintf(fid, ['     id="layer1">'  '\n']);
    fprintf(fid, ['     <path'  '\n']);
    fprintf(fid, ['     style="fill:none;stroke:#000000;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"'  '\n']);
    fprintf(fid, ['     d="M ' num2str(DOTS(c, 1)) ',' num2str(DOTS(c, 2)) ' ' num2str(DOTS(c + 1, 1)) ',' num2str(DOTS(c + 1, 2)) '"'  '\n']);
    fprintf(fid, ['     id="path3713"'  '\n']);
    fprintf(fid, ['     inkscape:connector-curvature="0" />'  '\n']);
 end
%    fprintf(fid, ['     id="layer1">'  '\n']);
    fprintf(fid, ['     <path'  '\n']);
    fprintf(fid, ['     style="fill:none;stroke:#000000;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"'  '\n']);
    fprintf(fid, ['     d="M ' num2str(DOTS(N_Dots, 1)) ',' num2str(DOTS(N_Dots, 2)) ' ' num2str(DOTS(1, 1)) ',' num2str(DOTS(1, 2)) '"'  '\n']);
    fprintf(fid, ['     id="path3713"'  '\n']);
    fprintf(fid, ['     inkscape:connector-curvature="0" />'  '\n']);