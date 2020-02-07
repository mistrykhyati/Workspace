@ECHO OFF
ECHO Economist Generate report Running....

RD /S /Q "D:\webdriveriotest\node_modules\htmlreport"
DEL /F/Q/S "D:\webdriveriotest\node_modules\screenshot" > NUL

start /d "D:\webdriveriotest\node_modules\.bin" allure generate "D:\webdriveriotest\node_modules\.bin\allure-results" -o "D:\webdriveriotest\node_modules\htmlreport" --clean


SET LookForFile="D:\webdriveriotest\node_modules\htmlreport\index.html"

:CheckForFile
IF EXIST %LookForFile% GOTO FoundIt

ECHO File not generated yet...

REM If we get here, the file is not found.

REM Wait 5 seconds and then recheck.
REM If no delay is needed, comment/remove the timeout line.
TIMEOUT /T 5 >nul

GOTO CheckForFile

:FoundIt
start D:\webdriveriotest\node_modules\htmlreport\index.html

