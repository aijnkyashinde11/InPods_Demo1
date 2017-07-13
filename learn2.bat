robocopy C:\inetpub\wwwroot\Orcas C:\inetpub\wwwroot\Backup\Orcas_Backup_%date:~-4,4%%date:~-10,2%%date:~7,2% /COPYALL /E
TIMEOUT 10
xcopy /y C:\WebCofigAndFiles C:\inetpub\wwwroot\Orcas /s /e /k
TIMEOUT 3
cacls C:\inetpub\wwwroot\Orcas /t /e /g Everyone:f
TIMEOUT 3
RD /S /Q "C:\inetpub\wwwroot\Demo1"
DEL /F /Q /A C:\inetpub\wwwroot\Demo1.sln
DEL /F /Q /A C:\inetpub\wwwroot\learn1.bat
DEL /F /Q /A C:\inetpub\wwwroot\appspec.yml
iisreset
