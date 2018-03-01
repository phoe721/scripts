@ECHO OFF
ECHO DISCONNECT ALL EXISTING NETWORK DRIVES
ECHO.

NET USE T: /DELETE
NET USE S: /DELETE
NET USE I: /DELETE
NET USE M: /DELETE
NET USE P: /DELETE
NET USE W: /DELETE
NET USE V: /DELETE
NET USE Z: /DELETE
 
ECHO MAP NETWORK DRIVES OF PHOENIX SERVER...
ECHO.

NET USE T: \\phoenix.phoe721.com\bt revive /USER:aaron /PERSISTENT:YES
NET USE S: \\phoenix.phoe721.com\share\docs revive /USER:aaron /PERSISTENT:YES
NET USE I: \\phoenix.phoe721.com\share\images revive /USER:aaron /PERSISTENT:YES
NET USE M: \\phoenix.phoe721.com\share\music revive /USER:aaron /PERSISTENT:YES
NET USE P: \\phoenix.phoe721.com\share\pics revive /USER:aaron /PERSISTENT:YES
NET USE W: \\phoenix.phoe721.com\share\warez revive /USER:aaron /PERSISTENT:YES
NET USE V: \\phoenix.phoe721.com\share\videos revive /USER:aaron /PERSISTENT:YES
NET USE Z: \\phoenix.phoe721.com\web revive /USER:aaron /PERSISTENT:YES

