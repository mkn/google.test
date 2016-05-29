

@ECHO off

rd /S/Q g
rd /S/Q google
git clone https://github.com/google/googletest -b master g --recursive || exit 666 /b

mkdir google
mkdir google\test
mkdir google\mock

ROBOCOPY /s %CD%\g\googletest\include %CD%\google\test\include /NFL /NDL /NJH /NJS /nc /ns /np
ROBOCOPY /s %CD%\g\googletest\src %CD%\google\test\src /NFL /NDL /NJH /NJS /nc /ns /np
ROBOCOPY %CD%\g\googletest\* %CD%\google\test /NFL /NDL /NJH /NJS /nc /ns /np
DEL google\test\Ma*
DEL google\test\CM*
DEL google\test\co*

ROBOCOPY /s %CD%\g\googlemock\include %CD%\google\mock\include /NFL /NDL /NJH /NJS /nc /ns /np
ROBOCOPY /s %CD%\g\googlemock\src %CD%\google\mock\src /NFL /NDL /NJH /NJS /nc /ns /np
ROBOCOPY %CD%\g\googlemock\* %CD%\google\mock /NFL /NDL /NJH /NJS /nc /ns /np
DEL google\mock\Ma*
DEL google\mock\CM*
DEL google\mock\co*

rd /S/Q g