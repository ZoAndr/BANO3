function [] = Line_to_SVG_file(fid, XY1, XY2)

%    fprintf(fid, ['     id="layer1">'  '\n']);
    fprintf(fid, ['     <path'  '\n']);
    fprintf(fid, ['     style="fill:none;stroke:#000000;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"'  '\n']);
    fprintf(fid, ['     d="M ' num2str(XY1(1)) ',' num2str(XY1(2)) ' ' num2str(XY2(1)) ',' num2str(XY2(2)) '"'  '\n']);
    fprintf(fid, ['     id="path3713"'  '\n']);
    fprintf(fid, ['     inkscape:connector-curvature="0" />'  '\n']);