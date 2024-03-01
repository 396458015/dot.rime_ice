@echo off
set "source=C:\Users\ThinkPad\AppData\Roaming\Rime"
set "destination=E:\Github\Pinyin\dot.rime_ice\rime_config"

set "file1=default.custom.yaml"
set "file2=installation.yaml"
set "file3=rime_ice.dict.yaml"
set "file4=weasel.custom.yaml"

echo Copying files...
copy /Y "%source%\%file1%" "%destination%"
copy /Y "%source%\%file2%" "%destination%"
copy /Y "%source%\%file3%" "%destination%"
copy /Y "%source%\%file4%" "%destination%"

echo File copy complete!
pause
