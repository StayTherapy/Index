@ECHO OFF
REM Office 2013 批量激活脚本(KMS)
REM 激活说明：
REM 1. 入域用户自动激活无效时请运行该脚本
REM 2. 该激活方式仅限内网激活，既用户180 天之内必须接入内网一次
REM 3. 该脚本可激活Office 2013 版本包括：Office 2013 Standard、Office 2013 Professional Plus
REM 4. 运行过程中会有确认窗口弹出，提示密钥导入成功
REM 5. 请以管理员身份运行该脚本
REM update 2016/2/3 by st.

SET IP=127.0.0.1
SET PORT=1688

REM 以管理员身份运行脚本切换路径到脚本目录，否则为 c:\windows\system32
cd /d %~dp0
echo %cd%

echo 请选择 Office 版本：
echo 1 Office 2013 Professional Plus
echo 2 Office 2013 Standard
echo (直接回车默认选择1)

SET /P choice=(1 or 2):

IF /I "%choice%"=="2" (
goto Act2
) ELSE (
goto Act1
)

:Act1
REM 导入 Office 2013 Professional Plus VLK 通用序列号
slmgr /ipk YC7DK-G2NP3-2QQC3-J6H88-GVGXT
goto ActActive

:Act2
REM 导入 Office 2013 Standard VLK 通用序列号
slmgr /ipk KBKQT-2NMXY-JJWGP-M62JB-92CD4
goto ActInput

:ActActive
REM 导入KMS 激活主机注册表设置
reg add HKLM\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform /v KeyManagementServiceName /t REG_SZ /d "%IP%" /f
reg add HKLM\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform /v KyeManagementServicePort /t REG_SZ /d "%PORT%" /f

REM 重新启动软件授权服务
net stop sppsvc && net start sppsvc

echo 请打开Office软件确认是否激活...

PAUSE
