# Consulta-de-Usu-rios-Logados
.bat para consulta de usuários logados através de IP e/ou Hostname

@echo off
set /p Alvo=Digite o IP/Nome do Alvo:
pause
query user /server:%Alvo%
@echo off
set /p derrubar=Deseja Derrubar algum usuario?(y/n):
if %derrubar% == y (goto :opcao1) else (goto :opcao2)
:opcao1
echo
set /p ID=Digite o ID do Usuário a ser Desconectado: 
rwinsta %ID% /server:%Alvo%
pause
@echo off
set /p derrubar=Deseja Derrubar algum usuario?(y/n):
if %derrubar% == y (goto :opcao1) else (goto :opcao2)
goto :fim
