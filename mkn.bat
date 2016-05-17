

@ECHO off
SET PWD=%CD%
IF NOT EXIST %PWD%\g (
	git clone https://github.com/google/googletest -b master g --recursive || exit 666 /b
)