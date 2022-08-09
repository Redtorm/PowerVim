@echo off
echo %HOMEPATH%

if exist %HOMEPATH%\vimfiles (
	ren %HOMEPATH%\vimfiles vimfiles-backup
	echo vimefiles backup done
)

if exist %HOMEPATH%\.vimrc (
	ren %HOMEPATH%\_vimrc vimrc-backup
	echo vimrc backup done
)

xcopy .\.vim\ %HOMEPATH%\vimfiles\ /e /y /q
copy .\_vimrc %HOMEPATH%\_vimrc
copy .\.ctags %HOMEPATH%\_ctags
