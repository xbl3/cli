
::  ## // https://github.com/r1ft4469/spotdl-batch
::  # https://github.com/r1ft4469/spotdl-batch/blob/master/Spotify.bat
::  https://raw.githubusercontent.com/r1ft4469/spotdl-batch/master/Spotify.bat


@echo off
setlocal
:Select
set /p ASSelect=Download Album or Song (A/S) ... 
if /I %ASSelect%==a (
	goto Album
) else if /I %ASSelect%==s (
	goto SongSearch
) else (
	goto Select
)

:SongSearch
echo Search for Song ...
set /p song= 
:SongRedownload
spotdl --song="%song%" -f ./
IF %ERRORLEVEL% NEQ 0 (
	goto SongRedownload
)
for %%a in (*.mp3) do set fileName=%%a
"C:\Program Files\VideoLAN\VLC\vlc.exe"  "%fileName%"
:SongSave
set /p save=Do you want to Save Song (Y/N)...
if /I %save%==Y (
	copy "%fileName%" %UserProfile%\Music\
) else if /I %save%==N (
	goto SongCleanup
) Else (
	goto SongSave
)
:SongCleanup
Del "%fileName%"
goto Select

:Album
mkdir Album
:AlbumSearch
echo Album Link ...
set /p song= 
:AlbumRedownload
spotdl --album="%song%" -f ./
IF %ERRORLEVEL% NEQ 0 (
	goto AlbumRedownload
)
set noext=%fileName:~0,-4%
for %%a in (*.txt) do set fileName=%%a
spotdl --list="%fileName%" -f .\Album\
IF %ERRORLEVEL% NEQ 0 (
	goto AlbumRedownload
)
"C:\Program Files\VideoLAN\VLC\vlc.exe"  ".\Album"
:AlbumSave
set /p save=Do you want to Save Album (Y/N)...
if /I %save%==Y (
	pushd %UserProfile%\Music
	mkdir %noext%
	popd
	copy .\Album\ %UserProfile%\Music\%noext%\
) else if /I %save%==N (
	goto AlbumCleanup
) Else (
	goto AlbumSave
)
:AlbumCleanup
del .\Album\*.mp3
rmdir .\Album
Del "%fileName%"
goto Select
