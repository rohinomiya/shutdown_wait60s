; Windowsを強制再起動する（60秒のウェイトあり）
#Requires AutoHotkey v2.0
#NoTrayIcon
#SingleInstance

; 60秒以内に OK を押さなければ自動で閉じる
result := MsgBox(
    "60秒後に Windows を強制再起動します。" . "`n`n" .
    "今すぐ再起動する場合は OK を押してください。" . "`n" .
    "キャンセルすると中止します。",
    "強制再起動の警告",
    "OKCancel Icon! T60"
)

; キャンセル → 中止
if result = "Cancel"
    ExitApp

; OK または Timeout → 強制再起動
; 再起動コード = 2(Reboot) + 4(Force)
Shutdown(6)
