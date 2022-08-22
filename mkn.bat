
@ECHO off

IF EXIST %PWD%\g (
	rd /S/Q  %CD%\g
)

git clone --depth 1 https://github.com/google/googletest g --recursive -b release-1.12.1 || exit 666 /b
