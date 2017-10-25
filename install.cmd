@echo off
set PWD=%~dp0
mklink %HOMEDRIVE%%HOMEPATH%\.emacs %PWD%windows\.emacs
mklink %HOMEDRIVE%%HOMEPATH%\.nyagos %PWD%windows\.nyagos
mklink %HOMEDRIVE%%HOMEPATH%\.ckw %PWD%windows\.ckw
mklink %HOMEDRIVE%%HOMEPATH%\.xyzzy %PWD%windows\.xyzzy
setx MSYS winsymlinks:nativestrict
