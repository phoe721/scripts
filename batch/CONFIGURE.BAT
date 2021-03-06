@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
SET COUNTERFILE=C:\COUNTER.TXT
SET CLASSROOMFILE=C:\CLASSROOM.TXT
SET CLASSROOM3FILE=C:\CLASSROOM3.TXT
SET TNSNAMEFILE=C:\ORANT\NETWORK\ADMIN\TNSNAMES.ORA

REM ##### 設定檔路徑與檔名 #####
FOR /F "TOKENS=* DELIMS=" %%A IN (!COUNTERFILE!) DO (
	SET COUNTERNAME=%%A
	REM ECHO !COUNTERNAME!
)

FOR /F "TOKENS=* DELIMS=" %%A IN (!CLASSROOMFILE!) DO (
	SET CLASSROOMNAME=%%A
	REM ECHO !CLASSROOMNAME!
)

FOR /F "TOKENS=* DELIMS=" %%A IN (!CLASSROOM3FILE!) DO (
	SET CLASSROOM3NAME=%%A
	REM ECHO !CLASSROOM3NAME!
)

ECHO 電腦名稱： %COMPUTERNAME%
ECHO 櫃檯號碼： !COUNTERNAME!
ECHO 教室編號： !CLASSROOMNAME!
ECHO 領票櫃臺編號： !CLASSROOM3NAME!
ECHO.

SET /P CHECK1=是否更改櫃檯號碼？[Y/N]
IF /I [!CHECK1!] EQU [Y] (
	GOTO COUNTER
) ELSE (
	GOTO CHECK2
)

:CHECK2
SET /P CHECK2=是否更改報到教室編號？[Y/N]
IF /I [!CHECK2!] EQU [Y] (
	GOTO CLASSROOM
) ELSE (
	GOTO CHECK3
)

:CHECK3
SET /P CHECK3=是否更改領票櫃臺編號？[Y/N]
IF /I [!CHECK3!] EQU [Y] (
	GOTO CLASSROOM3
) ELSE (
	GOTO CHECK4
)

:COUNTER
REM ##### 設定櫃檯號碼 #####
ECHO 目前櫃檯號碼： !COUNTERNAME!
SET /P COUNTERNAME=請設定櫃檯號碼: 
ECHO !COUNTERNAME! > !COUNTERFILE!
ECHO 櫃檯號碼已更改為：!COUNTERNAME!
ECHO.
GOTO CHECK2

:CLASSROOM
REM ##### 設定報到教室編號 #####
ECHO 目前教室編號： !CLASSROOMNAME!
SET /P CLASSROOMNAME=請設定報到教室編號: 
ECHO !CLASSROOMNAME! > !CLASSROOMFILE!
ECHO 教室編號已更改為：!CLASSROOMNAME!
ECHO.
GOTO CHECK3

:CLASSROOM3
REM ##### 設定領票櫃臺編號 #####
ECHO 目前領票櫃檯編號： !CLASSROOM3NAME!
SET /P CLASSROOM3NAME=請設定領票櫃檯編號: 
ECHO !CLASSROOM3NAME! > !CLASSROOM3FILE!
ECHO 領票櫃檯編號已更改為：!CLASSROOM3NAME!
ECHO.
GOTO CHECK4

:CHECK4
ECHO.
SET /P TNSNAME=請輸入要尋找的TNSNAME: 
FINDSTR /I /C:!TNSNAME! !TNSNAMEFILE! > NUL
IF %ERRORLEVEL% EQU 0 (
	ECHO 此TNSNAME存在
	SET /P CHECK=是否開啟 TNSNAMES.ORA 來檢查? [Y/N]
	IF [!CHECK!] EQU [Y] (
		START C:\ORANT\NETWORK\ADMIN\TNSNAMES.ORA
	) ELSE (
		GOTO END
	)
) ELSE (
	ECHO 此TNSNAME不存在，請加入新的TNSNAME
	START C:\ORANT\NETWORK\ADMIN\TNSNAMES.ORA
)
PAUSE

:END
ECHO.
ECHO 所有設定已經完成
PAUSE