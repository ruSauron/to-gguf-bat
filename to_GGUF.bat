@echo off
:menu
cls
echo Please select the type of conversion:
echo 1. q4_0
echo 2. q4_1
echo 3. q5_0
echo 4. q5_1
echo 5. q8_0

choice /c 12345 /n /m "Enter your choice: "

if errorlevel 5 (
    set type=q8_0
) else if errorlevel 4 (
    set type=q5_1
) else if errorlevel 3 (
    set type=q5_0
) else if errorlevel 2 (
    set type=q4_1
) else (
    set type=q4_0
)

set "inputFile=%~1"
set "outputFile=%~dp1%~n1.%type%.gguf"

title %~n1.%type% %time%
echo Starting conversion...
for /f "tokens=1-4 delims=:.," %%a in ("%time%") do (
    set /a "start=(((%%a*60)+1%%b)*60+1%%c)*100+1%%d"
)

pushd "%~dp0"
sd.exe -M convert -m "%inputFile%" -o "%outputFile%" --type %type%
popd

for /f "tokens=1-4 delims=:.," %%a in ("%time%") do (
    set /a "end=(((%%a*60)+1%%b)*60+1%%c)*100+1%%d"
)

set /a elapsed=end-start
set /a hh=elapsed/(60*60*100), rest=elapsed%%(60*60*100), mm=rest/(60*100), rest%%=60*100, ss=rest/100, cc=rest%%100

echo Conversion completed in %hh% hour(s) %mm% minute(s) %ss%.%cc% second(s).
pause