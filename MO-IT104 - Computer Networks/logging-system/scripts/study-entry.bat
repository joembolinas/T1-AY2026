@echo off
setlocal enabledelayedexpansion

REM MO-IT104 Computer Networks - Study Entry Logger
REM Usage: study-entry.bat "TYPE" "TOPIC" "DESCRIPTION" "STATUS"

if "%~4"=="" (
    echo.
    echo 🎯 MO-IT104 Computer Networks - Study Entry Logger
    echo.
    echo Usage: study-entry.bat "TYPE" "TOPIC" "DESCRIPTION" "STATUS"
    echo.
    echo Examples:
    echo   study-entry.bat "STUDY" "TCP_IP" "Reading protocol specifications" "PROGRESS"
    echo   study-entry.bat "LAB" "WIRESHARK" "HTTP traffic analysis completed" "COMPLETED"
    echo   study-entry.bat "CONCEPT" "ROUTING" "Understanding RIP protocol" "BREAKTHROUGH"
    echo   study-entry.bat "ASSIGNMENT" "NETWORK_DESIGN" "Campus topology design" "IN_PROGRESS"
    echo.
    echo Valid Types: STUDY, LECTURE, LAB, ASSIGNMENT, QUIZ, EXAM, CONCEPT, PROTOCOL, TOOL, SIMULATION, TROUBLESHOOT, CONFIG, PROGRESS, CHALLENGE, BREAKTHROUGH, REVIEW, REFLECTION, GOAL, PLAN
    echo Valid Status: PLANNED, IN_PROGRESS, COMPLETED, RESOLVED, OBSTACLE, INVESTIGATING, BREAKTHROUGH, POSITIVE, NOTED, STARTED, PROGRESS
    echo.
    exit /b 1
)

REM Get current timestamp (Windows format)
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "timestamp=%YYYY%-%MM%-%DD% %HH%:%Min%:%Sec%"

REM Create log entry
set "logEntry=[%timestamp%] | %~1 | %~2 | %~3 | %~4"

REM Append to course activity log
echo %logEntry% >> course-activity.log

REM Display confirmation
echo.
echo ✅ Logged: %~1 - %~2
echo    📝 %~3
echo    📊 Status: %~4
echo.

REM Show recent entries (last 3 lines)
echo 📋 Recent Log Entries:
for /f "skip=1 tokens=*" %%i in ('more +0 course-activity.log ^| find /v /c ""') do set /a lines=%%i
set /a skip=!lines!-3
if !skip! lss 0 set skip=0
more +!skip! course-activity.log

echo.
echo 🎯 Continue your Computer Networks learning journey!
echo.
