; Windowsを強制シャットダウンする（60秒のウェイトあり）

#Requires AutoHotkey v2.0
#NoTrayIcon
#SingleInstance

result := MsgBox(
    "あと60秒でシャットダウンします。間違えた場合はキャンセルしてください。",
    "確認",
    "OKCancel Icon! T60"
)

if result = "Cancel"
    ExitApp

; 強制シャットダウン (shutdown + Force + power down = 1 + 4 + 8 = 13)
Shutdown(13)
