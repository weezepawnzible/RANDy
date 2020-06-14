@echo off
setlocal EnableDelayedExpansion
title Randy RGWMR 1.0.1.0
REM "Title Screen"
cls
echo.
echo          _           _                   _             _        _        _   
ping -n 1 localhost > NUL 
echo         /\ \        / /\                /\ \     _    /\ \     /\ \     /\_\ 
ping -n 1 localhost > NUL
echo        /  \ \      / /  \              /  \ \   /\_\ /  \ \____\ \ \   / / / 
ping -n 1 localhost > NUL
echo      / / /\ \_\  / / /\ \ \          / / /\ \___/ // / /\/___  / \ \___/ /   
ping -n 1 localhost > NUL
echo     / / /_/ / / / / /  \ \ \        / / /  \/____// / /   / / /   \ \ \_/   
ping -n 1 localhost > NUL
echo    / / /__\/ / / / /___/ /\ \      / / /    / / // / /   / / /     \ \ \   
ping -n 1 localhost > NUL
echo   / / /_____/ / / /_____/ /\ \    / / /    / / // / /   / / /       \ \ \   
ping -n 1 localhost > NUL
echo  / / /\ \ \  / /_________/\ \ \  / / /    / / / \ \ \__/ / /         \ \ \   
ping -n 1 localhost > NUL
echo / / /  \ \ \/ / /_       __\ \_\/ / /    / / /   \ \___\/ /           \ \_\ 
ping -n 1 localhost > NUL
echo \/_/    \_\/\_\___\     /____/_/\/_/     \/_/     \/_____/             \/_/   
ping -n 2 localhost > NUL
REM
goto choice_lang
REM
:choice_lang
REM
cd localization
cls
echo.
echo Please choose a language
echo.
echo.
echo English          [1]
echo Deutsch - German [2]
echo.
echo.
choice /n /c:12 /m "To choose an action press its assigned key, which is showed in the square brackets []"%1
if errorlevel ==2 goto choice_lang_de
if errorlevel ==1 goto choice_lang_en
REM
:choice_lang_en
REM load translation - english
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<start_header_row_1>" ^< "en.ranlang"'
    ) do set "text_start_header_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<start_header_row_2>" ^< "en.ranlang"'
    ) do set "text_start_header_row_2=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<start_input_choice_1>" ^< "en.ranlang"'
    ) do set "text_start_input_choice_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_choice_name_values_header_row_1>" ^< "en.ranlang"'
    ) do set "text_prep_choice_name_values_header_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_choice_name_values_choice_option_1>" ^< "en.ranlang"'
    ) do set "text_prep_choice_name_values_choice_option_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_choice_name_values_choice_option_2>" ^< "en.ranlang"'
    ) do set "text_prep_choice_name_values_choice_option_2=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_choice_name_values_input_choice_1>" ^< "en.ranlang"'
    ) do set "text_prep_choice_name_values_input_choice_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<choice_name_values_header_row_1>" ^< "en.ranlang"'
    ) do set "text_choice_name_values_header_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<choice_name_values_input_name_1>" ^< "en.ranlang"'
    ) do set "text_choice_name_values_input_name_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_header_row_1>" ^< "en.ranlang"'
    ) do set "text_output_header_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_choice_option_1>" ^< "en.ranlang"'
    ) do set "text_output_choice_option_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_choice_option_2>" ^< "en.ranlang"'
    ) do set "text_output_choice_option_2=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_choice_option_3>" ^< "en.ranlang"'
    ) do set "text_output_choice_option_3=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_input_choice_1>" ^< "en.ranlang"'
    ) do set "text_output_input_choice_1=%%a"
REM
goto start
REM
:choice_lang_de
REM load translation - german
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<start_header_row_1>" ^< "de.ranlang"'
    ) do set "text_start_header_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<start_header_row_2>" ^< "de.ranlang"'
    ) do set "text_start_header_row_2=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<start_input_choice_1>" ^< "de.ranlang"'
    ) do set "text_start_input_choice_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_choice_name_values_header_row_1>" ^< "de.ranlang"'
    ) do set "text_prep_choice_name_values_header_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_choice_name_values_choice_option_1>" ^< "de.ranlang"'
    ) do set "text_prep_choice_name_values_choice_option_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_choice_name_values_choice_option_2>" ^< "de.ranlang"'
    ) do set "text_prep_choice_name_values_choice_option_2=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_choice_name_values_input_choice_1>" ^< "de.ranlang"'
    ) do set "text_prep_choice_name_values_input_choice_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<choice_name_values_header_row_1>" ^< "de.ranlang"'
    ) do set "text_choice_name_values_header_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<choice_name_values_input_name_1>" ^< "de.ranlang"'
    ) do set "text_choice_name_values_input_name_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_generator_header_row_1>" ^< "de.ranlang"'
    ) do set "text_prep_generator_header_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<prep_generator_input_name_1>" ^< "de.ranlang"'
    ) do set "text_prep_generator_input_name_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_header_row_1>" ^< "de.ranlang"'
    ) do set "text_output_header_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_text_row_1>" ^< "de.ranlang"'
    ) do set "text_output_text_row_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_choice_option_1>" ^< "de.ranlang"'
    ) do set "text_output_choice_option_1=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_choice_option_2>" ^< "de.ranlang"'
    ) do set "text_output_choice_option_2=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_choice_option_3>" ^< "de.ranlang"'
    ) do set "text_output_choice_option_3=%%a"
REM
for /f "tokens=3 delims=<>" %%a in (
        'find /i "<output_input_choice_1>" ^< "de.ranlang"'
    ) do set "text_output_input_choice_1=%%a"
REM
goto start
REM
:start
REM
cls
echo.
echo %text_start_header_row_1%
echo %text_start_header_row_2%
echo.
echo.
echo 3 [1]
echo 4 [2]
echo 5 [3]
echo 6 [4]
echo 7 [5]
echo 8 [6]
echo.
echo.
choice /n /c:123456 /m "%text_start_input_choice_1%"%1
if errorlevel ==6 (
	set $choice_1_random=8
	goto prep_choice_name_values
)
if errorlevel ==5 (
	set $choice_1_random=7
	goto prep_choice_name_values
)
if errorlevel ==4 (
	set $choice_1_random=6
	goto prep_choice_name_values
)
if errorlevel ==3 (
	set $choice_1_random=5
	goto prep_choice_name_values
)
if errorlevel ==2 (
	set $choice_1_random=4
	goto prep_choice_name_values
)
if errorlevel ==1 (
	set $choice_1_random=3
	goto prep_choice_name_values
)
goto start
REM
:prep_choice_name_values
REM
cls
echo.
echo %text_prep_choice_name_values_header_row_1%
echo.
echo.
echo %text_prep_choice_name_values_choice_option_1% [1]
echo %text_prep_choice_name_values_choice_option_2% [2]
echo.
echo.
choice /n /c:12 /m "%text_prep_choice_name_values_input_choice_1%"%1
if errorlevel ==2 goto prep_generator
if errorlevel ==1 goto choice_name_values
REM
:choice_name_values
REM
cls
echo.
echo %text_choice_name_values_header_row_1%
echo.
echo.
set /p $random_number_1_name=%text_choice_name_values_input_name_1% 1:
set /p $random_number_2_name=%text_choice_name_values_input_name_1% 2:
set /p $random_number_3_name=%text_choice_name_values_input_name_1% 3:
if %$choice_1_random% GEQ 4 set /p $random_number_4_name=%text_choice_name_values_input_name_1% 4:
if %$choice_1_random% GEQ 5 set /p $random_number_5_name=%text_choice_name_values_input_name_1% 5:
if %$choice_1_random% GEQ 6 set /p $random_number_6_name=%text_choice_name_values_input_name_1% 6:
if %$choice_1_random% GEQ 7 set /p $random_number_7_name=%text_choice_name_values_input_name_1% 7:
if %$choice_1_random% GEQ 8 set /p $random_number_8_name=%text_choice_name_values_input_name_1% 8:
goto prep_generator
REM
:prep_generator
REM
set $max_random_number_1=2
set $max_random_number_2=2
set $max_random_number_3=2
set /a $max_random_number_counter=%$max_random_number_1%+%$max_random_number_2%+%$max_random_number_3%
if "%$choice_1_random%" GEQ "4" (
	set $max_random_number_4=2
	set /a $max_random_number_counter+=!$max_random_number_4!
)
if "%$choice_1_random%" GEQ "5" (
	set $max_random_number_5=2
	set /a $max_random_number_counter+=!$max_random_number_5!
)
if "%$choice_1_random%" GEQ "6" (
	set $max_random_number_6=2
	set /a $max_random_number_counter+=!$max_random_number_6!
)
if "%$choice_1_random%" GEQ "7" (
	set $max_random_number_7=2
	set /a $max_random_number_counter+=!$max_random_number_7!
)
if "%$choice_1_random%" GEQ "8" (
	set $max_random_number_8=2
	set /a $max_random_number_counter+=!$max_random_number_8!
)
set $max_random_number_1_bck=%$max_random_number_1%
set $max_random_number_2_bck=%$max_random_number_2%
set $max_random_number_3_bck=%$max_random_number_3%
set $max_random_number_4_bck=%$max_random_number_4%
set $max_random_number_5_bck=%$max_random_number_5%
set $max_random_number_6_bck=%$max_random_number_6%
set $max_random_number_7_bck=%$max_random_number_7%
set $max_random_number_8_bck=%$max_random_number_8%
set $max_random_number_counter_bck=%$max_random_number_counter%
goto generator
REM
:generator
REM
REM Check Random Number Counter
if "%$max_random_number_counter%" LSS "1" (
	set $max_random_number_counter=%$max_random_number_counter_bck%
	set $max_random_number_1=%$max_random_number_1_bck%
	set $max_random_number_2=%$max_random_number_2_bck%
	set $max_random_number_3=%$max_random_number_3_bck%
	set $max_random_number_4=%$max_random_number_4_bck%
	set $max_random_number_5=%$max_random_number_5_bck%
	set $max_random_number_6=%$max_random_number_6_bck%
	set $max_random_number_7=%$max_random_number_7_bck%
	set $max_random_number_8=%$max_random_number_8_bck%
	goto generator
)
REM
REM Generate Random Output Number
set /a $rand_generator_output=(%RANDOM%*%$choice_1_random%/32768)+1
REM
REM Check Random Output Number 1
if "%$rand_generator_output%" EQU "1" (
REM	
	if "%$max_random_number_1%" GEQ "1" (
		set /a $max_random_number_1-=1
		set /a $max_random_number_counter-=1
		set $random_number_name_number=1
		goto output
	)
)
REM
REM Check Random Output Number 2
if "%$rand_generator_output%" EQU "2" (
REM	
	if "%$max_random_number_2%" GEQ "1" (
		set /a $max_random_number_2-=1
		set /a $max_random_number_counter-=1
		set $random_number_name_number=2
		goto output
	)
)
REM
REM Check Random Output Number 3
if "%$rand_generator_output%" EQU "3" (
REM	
	if "%$max_random_number_3%" GEQ "1" (
		set /a $max_random_number_3-=1
		set /a $max_random_number_counter-=1
		set $random_number_name_number=3
		goto output
	)
)
REM
REM Check Random Output Number 4
if "%$rand_generator_output%" EQU "4" (
REM	
	if "%$max_random_number_4%" GEQ "1" (
		set /a $max_random_number_4-=1
		set /a $max_random_number_counter-=1
		set $random_number_name_number=4
		goto output
	)
)
REM
REM Check Random Output Number 5
if "%$rand_generator_output%" EQU "5" (
REM	
	if "%$max_random_number_5%" GEQ "1" (
		set /a $max_random_number_5-=1
		set /a $max_random_number_counter-=1
		set $random_number_name_number=5
		goto output
	)
)
REM
REM Check Random Output Number 6
if "%$rand_generator_output%" EQU "6" (
REM	
	if "%$max_random_number_6%" GEQ "1" (
		set /a $max_random_number_6-=1
		set /a $max_random_number_counter-=1
		set $random_number_name_number=6
		goto output
	)
)
REM
REM Check Random Output Number 7
if "%$rand_generator_output%" EQU "7" (
REM	
	if "%$max_random_number_7%" GEQ "1" (
		set /a $max_random_number_7-=1
		set /a $max_random_number_counter-=1
		set $random_number_name_number=7
		goto output
	)
)
REM
REM Check Random Output Number 8
if "%$rand_generator_output%" EQU "8" (
REM	
	if "%$max_random_number_8%" GEQ "1" (
		set /a $max_random_number_8-=1
		set /a $max_random_number_counter-=1
		set $random_number_name_number=8
		goto output
	)
)
if %$rand_generator_output% EQU 0 goto error
goto generator
REM
:output
REM
cls
echo.
echo %text_output_header_row_1%
echo.
echo.
echo.
echo %$rand_generator_output%
echo.
REM
REM Check Value Name 1
if "%$random_number_name_number%" EQU "1" (
	if defined $random_number_1_name (
		echo %$random_number_1_name%
	)
)
REM
REM Check Value Name 2
if "%$random_number_name_number%" EQU "2" (
	if defined $random_number_2_name (
		echo %$random_number_2_name%
	)
)
REM
REM Check Value Name 3
if "%$random_number_name_number%" EQU "3" (
	if defined $random_number_3_name (
		echo %$random_number_3_name%
	)
)
REM
REM Check Value Name 4
if "%$random_number_name_number%" EQU "4" (
	if defined $random_number_4_name (
		echo %$random_number_4_name%
	)
)
REM
REM Check Value Name 5
if "%$random_number_name_number%" EQU "5" (
	if defined $random_number_5_name (
		echo %$random_number_5_name%
	)
)
REM
REM Check Value Name 6
if "%$random_number_name_number%" EQU "6" (
	if defined $random_number_6_name (
		echo %$random_number_6_name%
	)
)
REM
REM Check Value Name 7
if "%$random_number_name_number%" EQU "7" (
	if defined $random_number_7_name (
		echo %$random_number_7_name%
	)
)
REM
REM Check Value Name 8
if "%$random_number_name_number%" EQU "8" (
	if defined $random_number_8_name (
		echo %$random_number_8_name%
	)
)
REM
echo.
echo.
echo %text_output_choice_option_1% [1]
echo %text_output_choice_option_2% [2]
echo %text_output_choice_option_3% [3]
echo.
echo.
choice /n /c:123 /m "%text_output_input_choice_1%"%1
if errorlevel ==3 exit
if errorlevel ==2 goto start
if errorlevel ==1 goto generator
goto error
REM
:error
REM
cls
echo.
echo Error
pause
goto start
