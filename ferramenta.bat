@echo off
title Gerenciador de Pastas e Arquivos

:inicio
cls
echo =====================================
echo      GERENCIADOR DE PROJETOS
echo =====================================
echo.
set /p nome=Digite o nome da pasta que deseja criar: 

if "%nome%"=="" (
echo Nome invalido.
pause
goto inicio
)

mkdir "%nome%"
echo.
echo Pasta "%nome%" criada!
echo.

set /p entrar=Entrar na pasta agora? (S/N): 

if /I "%entrar%"=="S" (
cd "%nome%"
goto menu
) else (
exit
)

:menu
cls
echo ===============================
echo            MENU
echo ===============================
echo 1 - Criar arquivo .txt
echo 2 - Criar arquivo .html
echo 3 - Criar arquivo .js
echo 4 - Criar arquivo .bat
echo 5 - Editar arquivo existente
echo 6 - Listar arquivos
echo 7 - Sair
echo.
set /p op=Escolha: 

if "%op%"=="1" goto txt
if "%op%"=="2" goto html
if "%op%"=="3" goto js
if "%op%"=="4" goto bat
if "%op%"=="5" goto editar
if "%op%"=="6" goto listar
if "%op%"=="7" exit

goto menu

:txt
set /p nomearq=Nome do arquivo: 
echo. > "%nomearq%.txt"
notepad "%nomearq%.txt"
goto menu

:html
set /p nomearq=Nome do arquivo: 
echo ^<!DOCTYPE html^> > "%nomearq%.html"
echo ^<html^> >> "%nomearq%.html"
echo ^<head^> >> "%nomearq%.html"
echo ^<title^>Pagina^</title^> >> "%nomearq%.html"
echo ^</head^> >> "%nomearq%.html"
echo ^<body^> >> "%nomearq%.html"
echo ^<h1^>Ola Mundo^</h1^> >> "%nomearq%.html"
echo ^</body^> >> "%nomearq%.html"
echo ^</html^> >> "%nomearq%.html"
notepad "%nomearq%.html"
goto menu

:js
set /p nomearq=Nome do arquivo: 
echo console.log("Ola Mundo"); > "%nomearq%.js"
notepad "%nomearq%.js"
goto menu

:bat
set /p nomearq=Nome do arquivo: 
echo @echo off > "%nomearq%.bat"
echo echo Ola Mundo >> "%nomearq%.bat"
echo pause >> "%nomearq%.bat"
notepad "%nomearq%.bat"
goto menu

:editar
set /p arq=Digite o nome do arquivo (com extensao): 
notepad "%arq%"
goto menu

:listar
dir
pause
goto menu