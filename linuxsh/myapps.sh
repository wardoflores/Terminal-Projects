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
doskey root=cd #
doskey home=cd ~
doskey wsl=wsl.exe
# doskey apache=cd C:/Apache24/bin
# doskey apacherun=C:/Apache24/bin/httpd.exe -k start
# doskey apachestop=C:/Apache24/bin/httpd.exe -k stop
# doskey apachereboot=C:/Apache24/bin/httpd.exe -k restart
rem server scripts not in repo
doskey pyserver=python "/home/joey/Joey-Repositories/Python-Projects/completed/server/server.py"
rem Repo scripts
doskey organize=CALL "/home/joey/Joey-Repositories/Python-Projects/completed/fileorganizer/organize.bat"
doskey calculator=python "/home/joey/Joey-Repositories/Python-Projects/completed/calculator/simplecalculator.py"
doskey clicker=python "/home/joey/Joey-Repositories/Python-Projects/completed/autoclicker/clicker.py"
doskey idleclicks=python "/home/joey/Joey-Repositories/Python-Projects/completed/autoclicker/idleclicker.py"
doskey idlecursor =python "/home/joey/Joey-Repositories/Python-Projects/completed/idlecursor/idlecursor.py"
doskey idlescroller =python "/home/joey/Joey-Repositories/Python-Projects/completed/idlescroller/idlescroller.py"
doskey textspam=python "/home/joey/Joey-Repositories/Python-Projects/completed/spambot/spam.py"
doskey filespam=python "/home/joey/Joey-Repositories/Python-Projects/completed/spambot/filespam.py"
doskey keylogger=python "/home/joey/Joey-Repositories/Python-Projects/completed/keylogger/keylogger.py"
doskey birthday=python "/home/joey/Joey-Repositories/Python-Projects/completed/birthdaywisher/happybirthday.py"
doskey meditate=python "/home/joey/Joey-Repositories/Python-Projects/completed/meditation/meditate.py"
doskey netspeed=python "/home/joey/Joey-Repositories/Python-Projects/completed/internetspeed/speedprinter.py"
doskey wolfram=python "/home/joey/Joey-Repositories/Python-Projects/completed/wolramalpha/apicaller.py"
doskey voassist=python "/home/joey/Joey-Repositories/Python-Projects/completed/voiceassistant/voasst.py"
doskey votyper=python "/home/joey/Joey-Repositories/Python-Projects/completed/voiceassistant/voicetyper.py"
doskey TTS=python "/home/joey/Joey-Repositories/Python-Projects/completed/voiceassistant/TTS.py"
rem API scripts
doskey meet=CALL "/home/joey/Joey-Repositories/Python-Projects/completed/selenium/meetauto.bat"
doskey twitterbot=CALL "/home/joey/Joey-Repositories/Python-Twitter-Bot/twitterbot.bat"
doskey redditbot=CALL "/home/joey/Joey-Repositories/.Other-User-Repositories/Python-Reddit-Bot/redditbot.bat"
doskey discordbot=CALL "/home/joey/Joey-Repositories/Python-Discord-bot/discordbot.bat"
doskey adbcheck=CALL "/home/joey/Joey-Repositories/Android-Projects/adbcheck.bat"
doskey adbrestart=CALL "/home/joey/Joey-Repositories/Android-Projects/adbrestart.bat"
doskey scrcpystart=CALL "/home/joey/Joey-Repositories/Android-Projects/scrcpystart.bat"
doskey scrcpyrec=CALL "/home/joey/Joey-Repositories/Android-Projects/scrcpyrec.bat"