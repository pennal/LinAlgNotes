#!/bin/bash
compileFile() { 
    for i in {1..3}; do 
        pdflatex --shell-escape "$1"; 
    done
    # Get the absolute path for the main file
    pathToFile=${1%.*}
    # Remove leftover piping errors to null
    (rm "$pathToFile.aux" "$pathToFile.log" "$pathToFile.out" "$pathToFile.bbl" "$pathToFile.blg" "$pathToFile.toc") 2> /dev/null;
}

mkdir -p PDFs

# Generate the warning page
cd Other/warningPage
rm warningPage.pdf
compileFile warningPage.tex
cd ../../

# Generate the definitions
cd Chapters/
rm definitions.*

echo -e "\documentclass[a4paper]{book}

\input{../Other/packages.tex}
\input{../Other/CustomEnvironments.tex}
\input{../Other/layoutSetup.tex}

\\\begin{document}
" > definitions.tex

ls -1 | grep -e Chapter| while read x; do
	sed -n -e '/\\begin{definition}/,/\\end{definition}/p' -e '/^\\section/p' -e '/^\\chapter/p' $x >> definitions.tex
done

echo -e "\n\\\end{document}" >> definitions.tex

compileFile definitions.tex

mv definitions.pdf ../PDFs/Definitions.pdf

rm definitions.*

# Generate the main document
cd ../

# Read the current version
currentVer=$(($(cat Other/documentVersion.vers )+1))
echo $currentVer > Other/documentVersion.vers
# Remove any left over files
rm mainRender.*

# create a copy of the main
cp main.tex mainRender.tex
# Substitute the version
# DO NOT REMOVE THIS CHECK: Command used on OSX fails on anything else. 
# This checks which one to use. Taken from http://stackoverflow.com/questions/10736923/detect-os-from-bash-script-and-notify-user
if [[ $(echo "$OSTYPE") == darwin* ]]; then 
	# Running script on Mac
	sed -i '' s/Unknown/0.2."$currentVer"/g mainRender.tex
else
	# Running script on anything else
	sed -i s/Unknown/0.2."$currentVer"/g mainRender.tex
fi
	

compileFile mainRender.tex
rm mainRender.tex
mv mainRender.pdf PDFs/Notes.pdf
