@rem Sized for a half full window. TODO Add adb scripts 
echo off
echo.
echo Python APIs scripts:
echo.
echo meet 
echo discordbot
echo redditbot
echo twitterbot
echo voassist
echo votyper
echo TTS
echo wolfram
echo.
echo.
echo Python scripts:
echo.
echo meet (input meeting link)
echo clicker ( '=' start/stop '-' exit )
echo idleclicks (presses F13 every 5 secs)
echo idlecursor
echo idlescroller
echo organize (input abspath, BE CAREFUL)
echo textspam (Press enter to activate)
echo filespam (wait for 5 secs)
echo netspeed
echo keylogger
echo calculator
echo meditate
echo birthday
echo.
echo.
echo Current Android scripts are:
echo.
echo scrcpystart
echo scrcpyrec
echo adbcheck
echo adbrestart
echo.
echo.
echo Terminal scripts:
echo.
echo root
echo home
echo wsl
echo pyserver
echo apache
echo apacherun
echo apachestop
echo apachereboot
echo.
rem Aliases
doskey root=cd C:\Windows\system32
doskey home=cd C:\Users\Flores
doskey wsl=wsl.exe
doskey apache=cd C:\Apache24\bin
doskey apacherun=C:\Apache24\bin\httpd.exe -k start
doskey apachestop=C:\Apache24\bin\httpd.exe -k stop
doskey apachereboot=C:\Apache24\bin\httpd.exe -k restart
rem server scripts not in repo
doskey pyserver=python "C:\Users\Flores\coalemus\Python-Projects\completed\server\server.py"
rem Repo scripts
doskey organize=CALL "C:\Users\Flores\coalemus\Python-Projects\completed\fileorganizer\organize.bat"
doskey calculator=python "C:\Users\Flores\coalemus\Python-Projects\completed\calculator\simplecalculator.py"
doskey clicker=python "C:\Users\Flores\coalemus\Python-Projects\completed\autoclicker\clicker.py"
doskey idleclicks=python "C:\Users\Flores\coalemus\Python-Projects\completed\autoclicker\idleclicker.py"
doskey idlecursor =python "C:\Users\Flores\coalemus\Python-Projects\completed\idlecursor\idlecursor.py"
doskey idlescroller =python "C:\Users\Flores\coalemus\Python-Projects\completed\idlescroller\idlescroller.py"
doskey textspam=python "C:\Users\Flores\coalemus\Python-Projects\completed\spambot\spam.py"
doskey filespam=python "C:\Users\Flores\coalemus\Python-Projects\completed\spambot\filespam.py"
doskey keylogger=python "C:\Users\Flores\coalemus\Python-Projects\completed\keylogger\keylogger.py"
doskey birthday=python "C:\Users\Flores\coalemus\Python-Projects\completed\birthdaywisher\happybirthday.py"
doskey meditate=python "C:\Users\Flores\coalemus\Python-Projects\completed\meditation\meditate.py"
doskey netspeed=python "C:\Users\Flores\coalemus\Python-Projects\completed\internetspeed\speedprinter.py"
doskey wolfram=python "C:\Users\Flores\coalemus\Python-Projects\completed\wolramalpha\apicaller.py"
doskey voassist=python "C:\Users\Flores\coalemus\Python-Projects\completed\voiceassistant\voasst.py"
doskey votyper=python "C:\Users\Flores\coalemus\Python-Projects\completed\voiceassistant\voicetyper.py"
doskey TTS=python "C:\Users\Flores\coalemus\Python-Projects\completed\voiceassistant\TTS.py"
rem API scripts
doskey meet=CALL "C:\Users\Flores\coalemus\Python-Projects\completed\selenium\meetauto.bat"
doskey twitterbot=CALL "C:\Users\Flores\coalemus\Python-Twitter-Bot\twitterbot.bat"
doskey redditbot=CALL "C:\Users\Flores\coalemus\.Other-User-Repositories\Python-Reddit-Bot\redditbot.bat"
doskey discordbot=CALL "C:\Users\Flores\coalemus\Python-Discord-bot\discordbot.bat"
doskey adbcheck=CALL "C:\Users\Flores\coalemus\Android-Projects\adbcheck.bat"
doskey adbrestart=CALL "C:\Users\Flores\coalemus\Android-Projects\adbrestart.bat"
doskey scrcpystart=CALL "C:\Users\Flores\coalemus\Android-Projects\scrcpystart.bat"
doskey scrcpyrec=CALL "C:\Users\Flores\coalemus\Android-Projects\scrcpyrec.bat"
cmd