echo [START : 1.계정 관리]								>>[WIN]%COMPUTERNAME%.txt
echo [W-01 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-01 "Administrator 계정 이름 바꾸기"] 				>>[WIN]%COMPUTERNAME%.txt
echo # 현재 시스템 계정 목록 #								>>[WIN]%COMPUTERNAME%.txt
net user |find /v "명령을"								>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo # Administrator 계정 활성 유무 확인 #				>>[WIN]%COMPUTERNAME%.txt
net user administrator |find "활성 계정"				>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-01 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-04 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-04 "계정 잠금 임계값 설정"] 						>>[WIN]%COMPUTERNAME%.txt
echo # 잠금 임계값 #									>>[WIN]%COMPUTERNAME%.txt
net accounts |find "잠금 임계값"						>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-04 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-08 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-08 "계정 잠금 기간 설정"] 						>>[WIN]%COMPUTERNAME%.txt
echo # 잠금 기간 (분)#									>>[WIN]%COMPUTERNAME%.txt
net accounts |find "잠금 기간"							>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-08 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt