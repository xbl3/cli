@echo off
REM ::  Again just set your shit from--to ::
::  also note the spaces in front and behind
:: thats intentional as rclone dont give a shit
:: TABS IT DOES -- i do it to not %worry%%with%%bumps%

set "backup= --backup-dir "%~1/%date%" " 
set "exclude= --exclude {System**,$RECYCLE**,Windows**,$Recycle**} " 
set "logging= --log-file rclone.log --log-level INFO " 
set "checksum= --ignore-case --progress --fast-list --use-mmap --no-traverse --no-update-modtime --skip-links --checksum  " 
set "static= --ignore-case --progress --fast-list --use-mmap --no-traverse --no-update-modtime  --scopy-links " 
set "unc=\\"
rclone.exe copy "%input%" "%output%" %exclude% %logging% %backup% %static% 

