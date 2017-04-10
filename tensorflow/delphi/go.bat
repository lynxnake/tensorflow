@echo off && setlocal && cd /d %~dp0

set SWIG=C:\MinGW\msys\1.0\src\swig\swig.exe
set DCC32=dcc32 -q

REM %SWIG% %* -delphi -c++ -w451 -Wextra -Wallkw -Werror -IC:\MinGW\msys\1.0\src\tensorflow\tensorflow\c -IC:\MinGW\msys\1.0\src\tensorflow Tensorflow.i
REM -generaterename suggested_rename -generateconst suggested_const -generatetypemap suggested_typemap

echo on
%SWIG% -delphi -c++ -w451 -Wextra -Wallkw -Werror -IC:\MinGW\msys\1.0\src\tensorflow\tensorflow\c -IC:\MinGW\msys\1.0\src\tensorflow %* Tensorflow.i

set swig_errorlevel=%errorlevel%

if %swig_errorlevel%==0 (%DCC32% Tensorflow.pas) ELSE (echo SWIG Errorlevel was: %swig_errorlevel%)
