echo [START : 1.���� ����]								>>[WIN]%COMPUTERNAME%.txt
echo [W-01 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-01 "Administrator ���� �̸� �ٲٱ�"] 				>>[WIN]%COMPUTERNAME%.txt
echo # ���� �ý��� ���� ��� #								>>[WIN]%COMPUTERNAME%.txt
net user |find /v "�����"								>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo # Administrator ���� Ȱ�� ���� Ȯ�� #				>>[WIN]%COMPUTERNAME%.txt
net user administrator |find "Ȱ�� ����"				>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-01 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-04 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-04 "���� ��� �Ӱ谪 ����"] 						>>[WIN]%COMPUTERNAME%.txt
echo # ��� �Ӱ谪 #									>>[WIN]%COMPUTERNAME%.txt
net accounts |find "��� �Ӱ谪"						>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-04 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-08 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-08 "���� ��� �Ⱓ ����"] 						>>[WIN]%COMPUTERNAME%.txt
echo # ��� �Ⱓ (��)#									>>[WIN]%COMPUTERNAME%.txt
net accounts |find "��� �Ⱓ"							>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-08 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-10 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-10 "�н����� �ּ� ��ȣ ����"] 						>>[WIN]%COMPUTERNAME%.txt
echo # �ּ� ��ȣ ���� #									>>[WIN]%COMPUTERNAME%.txt
net accounts |find "�ּ� ��ȣ ����"						>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-10 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-11 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-11 "�н����� �ִ� ��� �Ⱓ"] 						>>[WIN]%COMPUTERNAME%.txt
echo # �ִ� ��ȣ ��� �Ⱓ #								>>[WIN]%COMPUTERNAME%.txt
net accounts |find "�ִ� ��ȣ ��� �Ⱓ"					>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-11 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-16 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-16 "�ֱ� ��ȣ ���"]		 						>>[WIN]%COMPUTERNAME%.txt
echo # ���� ���� ��å ���� #								>>[WIN]%COMPUTERNAME%.txt
secedit /export /cfg c:\secpol.txt					>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo # �ֱ� ��ȣ ��� (��) #								>>[WIN]%COMPUTERNAME%.txt
type c:\secpol.txt |find /I "PasswordHistorySize"	>>[WIN]%COMPUTERNAME%.txt
echo [W-16 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-20 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-20 "�ϵ��ũ �⺻ ���� ����"] 					>>[WIN]%COMPUTERNAME%.txt
echo # �ϵ��ũ �⺻ ���� ��� #							>>[WIN]%COMPUTERNAME%.txt
net share											>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo # ������Ʈ�� Ȯ�� #									>>[WIN]%COMPUTERNAME%.txtreq query
"HKEY_LOCAL_MACHINE\SYSTEM\CurrnentCon|  trolSet\Services\LanmanServer\Parametntms "
echo [W-20 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-37 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-37 "FTP ���� ���� ����"] 						>>[WIN]%COMPUTERNAME%.txt
echo # FTP ���� Ȯ�� #								>>[WIN]%COMPUTERNAME%.txt
net start |find /I "ftp"							>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-37 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-46 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-46 "SNMP ���� ���� ����"] 						>>[WIN]%COMPUTERNAME%.txt
echo # SNMP ���� Ȯ�� #								>>[WIN]%COMPUTERNAME%.txt
net start |find /I "snmp"
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-46 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-47 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-47 "SNMP ���� Ŀ�´�Ƽ ��Ʈ���� ���⼺ ����"] 		>>[WIN]%COMPUTERNAME%.txt
echo # SNMP ���� Ŀ�´�Ƽ ��Ʈ�� ���� Ȯ�� #					>>[WIN]%COMPUTERNAME%.txt
reg query "HKLM\SYSTEM\CurrentControlSet\Services\SNMP\Parameters\ValidCommunities" 			>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-47 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt