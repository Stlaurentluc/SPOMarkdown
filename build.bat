@echo off
set FILES=index.md BIMCanada.md BigD.md LOD.md LOIN.md LOIN-LODD.md OpenBimLogiciel.md Normes.md
pandoc %FILES% -s --css style.css -o livre.html
"C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe" --enable-local-file-access livre.html livre.pdf
echo Done.
pause