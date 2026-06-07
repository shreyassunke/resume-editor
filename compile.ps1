$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectRoot

$miktexBin = Join-Path $env:USERPROFILE "scoop\apps\miktex\current\texmfs\install\miktex\bin\x64"
$perlBin = Join-Path $env:USERPROFILE "scoop\apps\perl\current\perl\bin"
if (Test-Path $miktexBin) {
    $env:Path = "$env:USERPROFILE\scoop\shims;$perlBin;$miktexBin;" + $env:Path
}

if (Get-Command latexmk -ErrorAction SilentlyContinue) {
    latexmk -pdf -interaction=nonstopmode -file-line-error resume.tex
    exit $LASTEXITCODE
}

if (-not (Get-Command pdflatex -ErrorAction SilentlyContinue)) {
    Write-Error "pdflatex not found. Install MiKTeX with: scoop install miktex"
    exit 1
}

pdflatex -interaction=nonstopmode -file-line-error resume.tex
pdflatex -interaction=nonstopmode -file-line-error resume.tex
