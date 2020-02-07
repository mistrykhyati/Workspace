
@ECHO OFF
ECHO Economist Automation Running....
RD /S /Q "D:\webdriveriotest\node_modules\.bin\allure-results"
start /d "D:\webdriveriotest\node_modules\.bin" wdio wdio.conf.js
timeout 5 > NUL
ECHO Execution completed success