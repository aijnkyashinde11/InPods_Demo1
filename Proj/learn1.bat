robocopy C:\inetpub\wwwroot\Orcas C:\inetpub\wwwroot\Backup\Orcas_Backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2% /COPYALL /E
iisreset
