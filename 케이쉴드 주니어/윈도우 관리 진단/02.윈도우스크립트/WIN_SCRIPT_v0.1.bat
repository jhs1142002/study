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
echo  ==============================================================================  >>[WIN]%COMPUTERNAME%.txt