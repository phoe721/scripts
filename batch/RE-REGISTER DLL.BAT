@ECHO OFF

ECHO DELETE ALL PREFETCHED DATA...
DEL /F /S /Q %WINDIR%\PREFETCH\*.*

ECHO RE-REGISTER ALL DLLS
FOR %1 IN (%WINDIR%\SYSTEM32\*.DLL) DO REGSVR32.EXE /S %1 