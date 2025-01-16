for f in *.puml; do
    plantuml ${f} -tsvg
done

for f in *.tex; do
    pdflatex ${f}
    fbase=`basename ${f} .tex`
    inkscape --export-filename=${fbase}.svg ${fbase}.pdf
done
