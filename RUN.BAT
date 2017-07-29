@ECHO OFF

SET FILE=links.txt
FOR /F "TOKENS=*" %%A IN (%FILE%) DO (
	START CHROME --NEW-TAB %%A
	TIMEOUT /T 1
)


