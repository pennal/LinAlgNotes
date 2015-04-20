#!/bin/bash
compileFile() { 
    for i in {1..3}; do 
        pdflatex --shell-escape "$1"; 
    done
    rm *.aux *.log *.out; 
}

mkdir -p PDFs

cd Chapters/
rm definitions.*

echo -e "\documentclass[a4paper]{book}

\input{../Other/packages.tex}\n
\input{../Other/CustomEnvironments.tex}

\\\begin{document}
" > definitions.tex

ls -1 | grep -e Chapter| while read x; do
	sed -n -e '/\\begin{definition}/,/\\end{definition}/p' -e '/^\\section/p' -e '/^\\chapter/p' $x >> definitions.tex
done

echo -e "\n\end{document}" >> definitions.tex

compileFile definitions.tex

mv definitions.pdf ../PDFs/Definitions.pdf

rm definitions.*


cd ../

compileFile main.tex
mv main.pdf PDFs/Notes.pdf
