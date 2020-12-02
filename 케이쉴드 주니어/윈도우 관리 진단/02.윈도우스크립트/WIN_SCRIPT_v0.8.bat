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
echo [W-10 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-10 "패스워드 최소 암호 길이"] 						>>[WIN]%COMPUTERNAME%.txt
echo # 최소 암호 길이 #									>>[WIN]%COMPUTERNAME%.txt
net accounts |find "최소 암호 길이"						>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-10 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-11 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-11 "패스워드 최대 사용 기간"] 						>>[WIN]%COMPUTERNAME%.txt
echo # 최대 암호 사용 기간 #								>>[WIN]%COMPUTERNAME%.txt
net accounts |find "최대 암호 사용 기간"					>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-11 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-16 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-16 "최근 암호 기억"]		 						>>[WIN]%COMPUTERNAME%.txt
echo # 로컬 보안 정책 덤프 #								>>[WIN]%COMPUTERNAME%.txt
secedit /export /cfg c:\secpol.txt					>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo # 최근 암호 기억 (재) #								>>[WIN]%COMPUTERNAME%.txt
type c:\secpol.txt |find /I "PasswordHistorySize"	>>[WIN]%COMPUTERNAME%.txt
echo [W-16 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-20 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-20 "하드디스크 기본 공유 제거"] 					>>[WIN]%COMPUTERNAME%.txt
echo # 하드디스크 기본 공유 목록 #							>>[WIN]%COMPUTERNAME%.txt
net share											>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo # 레지스트리 확인 #									>>[WIN]%COMPUTERNAME%.txtreq query
"HKEY_LOCAL_MACHINE\SYSTEM\CurrnentCon|  trolSet\Services\LanmanServer\Parametntms "
echo [W-20 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-37 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-37 "FTP 서비스 구동 점검"] 						>>[WIN]%COMPUTERNAME%.txt
echo # FTP 서비스 확인 #								>>[WIN]%COMPUTERNAME%.txt
net start |find /I "ftp"							>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-37 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-46 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-46 "SNMP 서비스 구동 점검"] 						>>[WIN]%COMPUTERNAME%.txt
echo # SNMP 서비스 확인 #								>>[WIN]%COMPUTERNAME%.txt
net start |find /I "snmp"
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-46 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt
echo [W-47 START]									>>[WIN]%COMPUTERNAME%.txt
echo [W-47 "SNMP 서비스 커뮤니티 스트링의 복잡성 설정"] 		>>[WIN]%COMPUTERNAME%.txt
echo # SNMP 서비스 커뮤니티 스트링 네임 확인 #					>>[WIN]%COMPUTERNAME%.txt
reg query "HKLM\SYSTEM\CurrentControlSet\Services\SNMP\Parameters\ValidCommunities" 			>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo.												>>[WIN]%COMPUTERNAME%.txt
echo [W-47 END]										>>[WIN]%COMPUTERNAME%.txt
echo  ============================================================================== >>[WIN]%COMPUTERNAME%.txt