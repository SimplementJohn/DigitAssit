::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFC5ARQiLL2quA6AO1Mz0+OSLrUwZR948d5rP37WbbukQ5SU=
::YAwzuBVtJxjWCl3EqQJhSA==
::ZR4luwNxJguZRRmg/UU5PBNVQAjIbTja
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC5ARQiLL2quA6AO1Mz0+OSLrUwZR948d5rP37WbBtIs/BSqJ9gozn86
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
chcp 65001 >nul

:: Vérifie les droits administrateur
>nul 2>&1 net session
if %errorlevel% neq 0 (
    echo [!] Ce script doit être lancé en administrateur.
    echo [*] Tentative de relance avec les droits admin...
    powershell -Command "Start-Process 'cmd.exe' -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit /b
)
color 0B

:menu
cls
echo.
echo   /$$$$$$$  /$$           /$$   /$$     /$$                 /$$ /$$
echo  ^| $$__  $$^|__/          ^|__/  ^| $$    ^| $$                ^| $$^| $$
echo  ^| $$  \ $$ /$$  /$$$$$$  /$$ /$$$$$$  ^| $$$$$$$   /$$$$$$ ^| $$^| $$
echo  ^| $$  ^| $$^| $$ /$$__  $$^| $$^|_  $$_/  ^| $$__  $$ ^|____  $$^| $$^| $$
echo  ^| $$  ^| $$^| $$^| $$  \ $$^| $$  ^| $$    ^| $$  \ $$  /$$$$$$$^| $$^| $$
echo  ^| $$  ^| $$^| $$^| $$  ^| $$^| $$  ^| $$ /$$^| $$  ^| $$ /$$__  $$^| $$^| $$
echo  ^| $$$$$$$/^| $$^|  $$$$$$$^| $$  ^|  $$$$/^| $$  ^| $$^|  $$$$$$$^| $$^| $$
echo  ^|_______/ ^|__/ \____  $$^|__/   \___/  ^|__/  ^|__/ \_______/^|__/^__/
echo                /$$  \ $$
echo               ^|  $$$$$$/
echo                \______/
echo                                                             By John
echo.
echo ============================= MENU PRINCIPAL =======================
echo.
echo 1. Group Policy 
echo 2. NetUse
echo 3. IPConfig
echo 4. Optimisation Windows
echo 5. Services
echo 6. DNS
echo 7. Credits
echo ===================================================================
echo.
set /p option="Choix (1-7) : "

if "%option%"=="1" goto :gp_menu
if "%option%"=="2" goto :netuse_menu
if "%option%"=="3" goto :ipconfig_menu
if "%option%"=="4" goto :optimizer_menu
if "%option%"=="5" goto :services_menu
if "%option%"=="6" goto :dns_menu
if "%option%"=="7" goto :credits
goto :menu

:: ============================ GROUP POLICY ============================

:gp_menu
:gp_loop
cls
echo ===== Group Policy =====
echo.
echo 1. gpupdate
echo 2. gpupdate /force
echo 3. Retour
echo.
set /p option="Choix (1-3) : "

if "%option%"=="1" (gpupdate & pause)
if "%option%"=="2" (gpupdate /force & pause)
if "%option%"=="3" goto :menu
goto :gp_loop

:: ============================ NET USE ============================

:netuse_menu
:netuse_loop
cls
echo ===== NetUse =====
echo.
echo 1. Voir les lecteurs reseau (net use)
echo 2. Connecter un lecteur reseau 
echo 3. Supprimer un lecteur reseau
echo 4. Retour
echo.
set /p option="Choix (1-4) : "

if "%option%"=="1" (net use & pause)
if "%option%"=="2" (
    set /p drive="Lettre du lecteur (ex: Z): "
    set /p path="Chemin reseau (ex: \\serveur\partage): "
    net use %drive% %path% & pause
)
if "%option%"=="3" (
    set /p drive="Lettre du lecteur à supprimer (ex: Z): "
    net use %drive% /delete & pause
)
if "%option%"=="4" goto :menu
goto :netuse_loop

:: ============================ IPCONFIG ============================

:ipconfig_menu
:ipconfig_loop
cls
echo ===== IPConfig =====
echo.
echo 1. ipconfig
echo 2. ipconfig /all
echo 3. ipconfig /release
echo 4. ipconfig /renew
echo 5. Retour
echo.
set /p option="Choix (1-5) : "

if "%option%"=="1" (ipconfig & pause)
if "%option%"=="2" (ipconfig /all & pause)
if "%option%"=="3" (ipconfig /release & pause)
if "%option%"=="4" (ipconfig /renew & pause)
if "%option%"=="5" goto :menu
goto :ipconfig_loop

:: ============================ OPTIMISATION ============================

:optimizer_menu
:optimizer_loop
cls
echo ===== Optimisation Windows =====
echo.
echo 1. sfc /scannow    (Analyse et réparation des fichiers système)
echo 2. chkdsk          (Analyse du disque dur)
echo 3. defrag          (Défragmentation du disque)
echo 4. Retour
echo.
set /p option="Choix (1-4) : "

if "%option%"=="1" (sfc /scannow & pause)
if "%option%"=="2" (chkdsk & pause)
if "%option%"=="3" (defrag & pause)
if "%option%"=="4" goto :menu
goto :optimizer_loop

:: ============================ SERVICES ============================

:services_menu
:services_loop
cls
echo ===== Services =====
echo.
echo 1. Check du service DHCP
echo 2. Démarrage du service DHCP
echo 3. Arrêt du service DHCP
echo 4. Retour
echo.
set /p option="Choix (1-4) : "

if "%option%"=="1" (sc query dhcpserver & pause)
if "%option%"=="2" (net start dhcpserver & pause)
if "%option%"=="3" (net stop dhcpserver & pause)
if "%option%"=="4" goto :menu
goto :services_loop

:: ============================ DNS ============================

:dns_menu
:dns_loop
cls
echo ===== DNS =====
echo.
echo 1. ipconfig /flushdns        (Vider le cache DNS)
echo 2. ipconfig /displaydns      (Afficher le cache DNS)
echo 3. ipconfig /registerdns     (Forcer l’enregistrement DNS)
echo 4. nslookup                  (Lancer l’outil de requêtes DNS)
echo 5. Retour
echo.
set /p option="Choix (1-5) : "

if "%option%"=="1" (ipconfig /flushdns & pause)
if "%option%"=="2" (ipconfig /displaydns & pause)
if "%option%"=="3" (ipconfig /registerdns & pause)
if "%option%"=="4" (start cmd /k nslookup)
if "%option%"=="5" goto :menu
goto :dns_loop

:: ============================ CREDITS ============================

:credits
cls
echo Script outil d'administration système
echo Par John Rosa - 13/06/2025
echo Version 1.0
echo. _______________________________________
echo  Cette version fonctionne sans bug 
echo. _______________________________________
echo.
set /p dummy="Appuyez sur ENTREE pour revenir au menu..."
goto :menu
