@echo off
echo =====================================
echo DIAGNOSTIC DU SERVEUR PROLOG
echo =====================================
echo.

REM --- Test 1: Vérifier si SWI-Prolog est installé
echo [1] Test de SWI-Prolog...
swipl --version
if %errorlevel% neq 0 (
    echo ERREUR: SWI-Prolog n'est pas installe ou pas dans le PATH
    echo Installez SWI-Prolog depuis https://www.swi-prolog.org/
    pause
    exit /b 1
)
echo OK - SWI-Prolog detecte
echo.

REM --- Test 2: Vérifier si le fichier existe
echo [2] Test du fichier web_enquete.pl...
if not exist "web_enquete.pl" (
    echo ERREUR: Le fichier web_enquete.pl est introuvable dans ce repertoire
    echo Repertoire actuel: %CD%
    dir *.pl
    pause
    exit /b 1
)
echo OK - Fichier trouve
echo.

REM --- Test 3: Lancer Prolog avec affichage des erreurs
echo [3] Lancement de Prolog avec diagnostic...
echo Si des erreurs apparaissent, notez-les pour le debogage.
echo Tapez "halt." pour quitter Prolog si necessaire. et ecriver "server(8080)." pour demarrer le serveur.
echo.
pause

REM --- Lance SWI-Prolog en mode interactif pour voir les erreurs
swipl web_enquete.pl

echo.
echo Session Prolog terminee.
pause