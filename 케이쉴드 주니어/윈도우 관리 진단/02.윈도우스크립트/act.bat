chcp 437
rem echo [W-04] ���� ��� �Ӱ谪 ����         >>..\%COMPUTERNAME%._WinSrv.txt

echo.
net accounts > net-accounts.txt
type net-accounts.txt | find "Lockout threshold"	> lockoutchecktemp.txt
FOR /F "tokens=3" %%a in (lockoutchecktemp.txt) do SET KISATEMP=%%a

if %KISATEMP% LEQ 5 GOTO GOOD
echo [W-04] ��� >> ..\%COMPUTERNAME%_WinSrv.txt

goto bad


:GOOD
echo [W-04] ��ȣ >> ..\%COMPUTERNAME%_WinSrv.txt

:BAD

set KISATEMP=
del net-accounts.txt
del lockoutchecktemp.txt