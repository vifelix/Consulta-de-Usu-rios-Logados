@echo off
set /p servidor=Digite o do servidor:
pause
query user /server:%servidor%
@echo off
set /p derrubar=Deseja Derrubar algum usuario?(y/n):
if %derrubar% == y (goto :opcao1) else (goto :opcao2)
:opcao1
echo
set /p ID=Digite o ID do Usuário a ser Desconectado: 
rwinsta %ID% /server:%servidor%
pause
@echo off
set /p derrubar=Deseja Derrubar algum usuario?(y/n):
if %derrubar% == y (goto :opcao1) else (goto :opcao2)
goto :fim
