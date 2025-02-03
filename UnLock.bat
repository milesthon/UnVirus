@ECHO OFF
CHCP 65001>NUL

REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V DisableRegistryTools                /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V DisableTaskMgr                      /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V DisableCMD                          /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V NoDispCPL                           /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoFolderOptions                     /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoControlPanel                      /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoDrives                            /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoViewOnDrive                       /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V DisallowRun                         /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V RestrictRun                         /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V legalnoticecaption                  /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V legalnoticetext                     /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun"                            /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun"                            /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /V EnableCursorSuppression/D 1 /T REG_DWORD /F

REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V DisableRegistryTools                /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V DisableTaskMgr                      /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V DisableCMD                          /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V NoDispCPL                           /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoFolderOptions                     /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoControlPanel                      /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoDrives                            /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoViewOnDrive                       /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V DisallowRun                         /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V RestrictRun                         /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun"                            /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun"                            /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideFileExt          /D 0 /T REG_DWORD /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V IconsOnly            /D 0 /T REG_DWORD /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Hidden               /D 1 /T REG_DWORD /F


For /F "Delims=" %%I In ('Dir /B /AD-S-H "C:\Users" ') Do (REG LOAD HKU\%%I C:\Users\%%I\NTUSER.DAT)
For /f "tokens=*" %%A in ('reg query HKU') do (
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V DisableRegistryTools                /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V DisableTaskMgr                      /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V DisableCMD                          /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"   /V NoDispCPL                           /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoFolderOptions                     /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoControlPanel                      /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoDrives                            /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoViewOnDrive                       /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V DisallowRun                         /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V RestrictRun                         /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun"                            /F
REG DELETE "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun"                            /F
REG ADD "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideFileExt          /D 0 /T REG_DWORD /F
REG ADD "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V IconsOnly            /D 0 /T REG_DWORD /F
REG ADD "%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Hidden               /D 1 /T REG_DWORD /F
)

PAUSE