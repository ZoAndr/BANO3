
if Type == Popona
    fid=fopen('Popona.svg','w');
end
if Type == Slon
    fid=fopen('Slon.svg','w');
end

fprintf(fid, ['<?xml version="1.0" encoding="UTF-8" standalone="no"?>'  '\n']);
fprintf(fid, ['<!-- Created with Inkscape (http://www.inkscape.org/) -->'  '\n']);
fprintf(fid, [''  '\n']);
fprintf(fid, ['<svg'  '\n']);
fprintf(fid, ['   xmlns:dc="http://purl.org/dc/elements/1.1/"'  '\n']);
fprintf(fid, ['   xmlns:cc="http://creativecommons.org/ns#"'  '\n']);
fprintf(fid, ['   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"'  '\n']);
fprintf(fid, ['   xmlns:svg="http://www.w3.org/2000/svg"'  '\n']);
fprintf(fid, ['   xmlns="http://www.w3.org/2000/svg"'  '\n']);
fprintf(fid, ['   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"'  '\n']);
fprintf(fid, ['   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"'  '\n']);
fprintf(fid, ['   width="210mm"'  '\n']);
fprintf(fid, ['   height="297mm"'  '\n']);
fprintf(fid, ['   viewBox="0 0 210 297"'  '\n']);
fprintf(fid, ['   version="1.1"'  '\n']);
fprintf(fid, ['   id="svg8"'  '\n']);
fprintf(fid, ['   inkscape:version="0.92.3 (2405546, 2018-03-11)"'  '\n']);
fprintf(fid, ['   sodipodi:docname="test_001.svg">'  '\n']);
fprintf(fid, ['  <defs'  '\n']);
fprintf(fid, ['     id="defs2" />'  '\n']);
fprintf(fid, ['  <sodipodi:namedview'  '\n']);
fprintf(fid, ['     id="base"'  '\n']);
fprintf(fid, ['     pagecolor="#ffffff"'  '\n']);
fprintf(fid, ['     bordercolor="#666666"'  '\n']);
fprintf(fid, ['     borderopacity="1.0"'  '\n']);
fprintf(fid, ['     inkscape:pageopacity="0.0"'  '\n']);
fprintf(fid, ['     inkscape:pageshadow="2"'  '\n']);
fprintf(fid, ['     inkscape:zoom="0.35"'  '\n']);
fprintf(fid, ['     inkscape:cx="400"'  '\n']);
fprintf(fid, ['     inkscape:cy="560"'  '\n']);
fprintf(fid, ['     inkscape:document-units="mm"'  '\n']);
fprintf(fid, ['     inkscape:current-layer="layer1"'  '\n']);
fprintf(fid, ['     showgrid="false"'  '\n']);
fprintf(fid, ['     inkscape:window-width="534"'  '\n']);
fprintf(fid, ['     inkscape:window-height="628"'  '\n']);
fprintf(fid, ['     inkscape:window-x="1851"'  '\n']);
fprintf(fid, ['     inkscape:window-y="282"'  '\n']);
fprintf(fid, ['     inkscape:window-maximized="0" />'  '\n']);
fprintf(fid, ['  <metadata'  '\n']);
fprintf(fid, ['     id="metadata5">'  '\n']);
fprintf(fid, ['    <rdf:RDF>'  '\n']);
fprintf(fid, ['      <cc:Work'  '\n']);
fprintf(fid, ['         rdf:about="">'  '\n']);
fprintf(fid, ['        <dc:format>image/svg+xml</dc:format>'  '\n']);
fprintf(fid, ['        <dc:type'  '\n']);
fprintf(fid, ['           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />'  '\n']);
fprintf(fid, ['        <dc:title></dc:title>'  '\n']);
fprintf(fid, ['      </cc:Work>'  '\n']);
fprintf(fid, ['    </rdf:RDF>'  '\n']);
fprintf(fid, ['  </metadata>'  '\n']);
fprintf(fid, ['  <g'  '\n']);
fprintf(fid, ['     inkscape:label="Layer 1"'  '\n']);
fprintf(fid, ['     inkscape:groupmode="layer"'  '\n']);
fprintf(fid, ['     id="layer1">'  '\n']);


Dots_to_SVG_file(fid, DOTS_A);
Dots_to_SVG_file(fid, DOTS_B);
Dots_to_SVG_file(fid, DOTS_C);
Dots_to_SVG_file(fid, DOTS_D);
Dots_to_SVG_file(fid, DOTS_E);
if Type == Popona
    Dots_to_SVG_file(fid, DOTS_F);
end
Dots_to_SVG_file(fid, DOTS_G);
if Type == Popona
    Dots_to_SVG_file(fid, DOTS_H);
end
Dots_to_SVG_file(fid, DOTS_I);

if Type == Popona
    Dots_to_SVG_file(fid, DOTS_U1);
    Dots_to_SVG_file(fid, DOTS_U2);
    Dots_to_SVG_file(fid, DOTS_U3);
    Dots_to_SVG_file(fid, DOTS_U4);
end
if Type == Popona
    Line_to_SVG_file(fid, F1Z, F2Z);
    Line_to_SVG_file(fid, F5Z, F6Z);
    Line_to_SVG_file(fid, H1Z, H2Z);
    Line_to_SVG_file(fid, H5Z, H6Z);
end

Crcle_to_SVG_file(fid, Crc_UL_1, Crc_R);
Crcle_to_SVG_file(fid, Crc_TL_1, Crc_R);
Crcle_to_SVG_file(fid, Crc_UR_1, Crc_R);
Crcle_to_SVG_file(fid, Crc_TR_1, Crc_R);
if Type == Popona
    Crcle_to_SVG_file(fid, Crc_UL_2, Crc_R);
    Crcle_to_SVG_file(fid, Crc_TL_2, Crc_R);
    Crcle_to_SVG_file(fid, Crc_UR_2, Crc_R);
    Crcle_to_SVG_file(fid, Crc_TR_2, Crc_R);
end


for c = 1: N_LED
    Crcle_to_SVG_file(fid, Arr_LED(c, :), 1.75);
end

for c = 1: N_FxHls
    Crcle_to_SVG_file(fid, FxHls(c, :), 0.6);
end

fprintf(fid, ['  </g>'  '\n']);
fprintf(fid, ['</svg>'  '\n']);

%close file indentifier
fclose(fid)