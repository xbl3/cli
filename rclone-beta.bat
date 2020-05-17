@echo off&if "%*" == "" (echo:Need inputs&goto:eof)

::set /p
echo: Ill work on this later but eith er you shit or change and run
beta copy "%source%:%target%" "%output%:%target%" --progress --fast-list --use-mmap --exclude {""*.txt","*.sqlite","*.log","*.lck","*.lock","*.bin""}

