

@ECHO off

IF EXIST %PWD%\g (
	rd /S/Q  %CD%\g
)

IF EXIST %CD%\google (
	rd /S/Q %CD%\google
)

git clone --depth 1 https://github.com/google/googletest -b master g --recursive || exit 666 /b

mkdir %CD%\google
mkdir %CD%\google\test
mkdir %CD%\google\mock

ROBOCOPY %CD%\g\googletest %CD%\google\test /NFL /NDL /NJH /NJS /nc /ns /np
ROBOCOPY /s %CD%\g\googletest\include %CD%\google\test\include /NFL /NDL /NJH /NJS /nc /ns /np
ROBOCOPY /s %CD%\g\googletest\src %CD%\google\test\src /NFL /NDL /NJH /NJS /nc /ns /np
DEL /Q %CD%\google\test\Ma*
DEL /Q %CD%\google\test\CM*
DEL /Q %CD%\google\test\co*

ROBOCOPY %CD%\g\googlemock %CD%\google\mock /NFL /NDL /NJH /NJS /nc /ns /np
ROBOCOPY /s %CD%\g\googlemock\include %CD%\google\mock\include /NFL /NDL /NJH /NJS /nc /ns /np
ROBOCOPY /s %CD%\g\googlemock\src %CD%\google\mock\src /NFL /NDL /NJH /NJS /nc /ns /np
DEL /Q %CD%\google\mock\Ma*
DEL /Q %CD%\google\mock\CM*
DEL /Q %CD%\google\mock\co*

rd /S/Q g
