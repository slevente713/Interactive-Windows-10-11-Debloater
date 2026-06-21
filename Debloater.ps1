Write-Host "FIGYELEM! A KÉPERNYŐ NÉHA PÁR MÁSODPERCRE ELSÖTÉTÜLHET, HOGY ÉRVÉNYESÜLJENEK AUTOMATIKUSAN A MÓDOSÍTÁSOK! ATTENTION! THE SCREEN MAY GO DARK FOR A FEW SECONDS TO ALLOW THE CHANGES TO TAKE EFFECT AUTOMATICALLY!" -ForegroundColor Yellow
Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Bypass -Force
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass -Force
Write-Host "Winget források frissítése... Update Winget sources..." -ForegroundColor Cyan
winget source update
Write-Host "Winget források frissítve. Winget sources were successfully updated." -ForegroundColor Green

$answer1 = Read-Host "Szeretnéd törölni a Segítség kérése alkalmazást? (y/n) Would you like to delete the Get Help app? (y/n)"
if ($answer1 -match "y") {
    winget uninstall --id Microsoft.GetHelp_8wekyb3d8bbwe 2>$null
    Write-Host "A Segítség kérése alkalmazás törlésre került. Get Help was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Segítség kérése alkalmazás törlését. You cancelled removing the Get Help app." -ForegroundColor Yellow
}

$answer2 = Read-Host "Szeretnéd törölni a Windows Journal alkalmazást? (y/n) Would you like to delete the Windows Journal app? (y/n)"
if ($answer2 -match "y") {
    Get-AppxPackage *MicrosoftJournal* | Remove-AppxPackage 2>$null
    Write-Host "A Windows Journal alkalmazás sikeresen törlésre került. Windows Journal was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Windows Journal alkalmazás törlését. You cancelled removing the Windows Journal app." -ForegroundColor Yellow
}

$answer3 = Read-Host "Szeretnéd törölni a Visszajelzési központ alkalmazást? (y/n) Would you like to delete the FeedBack Hub app? (y/n)"
if ($answer3 -match "y") {
    winget uninstall --id Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe 2>$null
    Write-Host "A Visszajelzési központ alkalmazás sikeresen törlésre került. Feedback Hub was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Visszajelzési központ alkalmazás törlését. You cancelled removing the FeedBack Hub app." -ForegroundColor Yellow
}

$answer4 = Read-Host "Szeretnéd törölni a Candy Crush játékot? (y/n) Would you like to delete the Candy Crush game? (y/n)"
if ($answer4 -match "y") {
    Get-AppxPackage *CandyCrush* | Remove-AppxPackage 2>$null
    Write-Host "A Candy Crush alkalmazás sikeresen törlésre került. Candy Crush was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Candy Crush alkalmazás törlését. You cancelled removing the Candy Crush app." -ForegroundColor Yellow
}

$answer5 = Read-Host "Szeretnéd törölni a Bing fordító alkalmazást? (y/n) Would you like to delete the Bing translator app? (y/n)"
if ($answer5 -match "y") {
    Get-AppxPackage *BingTranslator* | Remove-AppxPackage 2>$null
    Write-Host "A Bing fordító alkalmazás sikeresen törölve. Bing translator was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing fordító alkalmazás törlésre került. You cancelled removing the Bing translator app." -ForegroundColor Yellow
}

$answer6 = Read-Host "Szeretnéd törölni a Bing Speedtest alkalmazást? (y/n) Would you like to delete the Bing Speedtest app? (y/n)"
if ($answer6 -match "y") {
    Get-AppxPackage *Speedtest* | Remove-AppxPackage 2>$null
    Write-Host "A Bing Speedtest alkalmazás sikeresen törlésre került. Bing speedtest was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing Speedtest alkalmazás törlését. You cancelled removing the Bing Speedtest app." -ForegroundColor Yellow
}

$answer7 = Read-Host "Szeretnéd törölni a McAfee vírusirtót? (y/n) Would you like to delete the McAfee antivirus? (y/n)"
if ($answer7 -match "y") {
    winget uninstall --name "McAfee" 2>$null
    Write-Host "A McAfee vírusirtó sikeresen törlésre került. McAfee antivirus was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a McAfee vírusirtó törlését. You cancelled removing the McAfee antivirus." -ForegroundColor Yellow
}

$answer8 = Read-Host "Szeretnéd törölni a Norton vírusirtót? (y/n) Would you like to delete the Norton antivirus? (y/n)"
if ($answer8 -match "y") {
    winget uninstall --name "Norton" 2>$null
    Write-Host "A Norton vírusirtó sikeresen törlésre került. Norton antivirus was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Norton vírusirtó törlését. You cancelled removing the Norton antivirus." -ForegroundColor Yellow
}

$answer9 = Read-Host "Szeretnéd törölni a Dev Home alkalmazást? (y/n) Would you like to delete the Dev Home app? (y/n)"
if ($answer9 -match "y") {
    winget uninstall --id Microsoft.DevHome_8wekyb3d8bbwe 2>$null
    Write-Host "A Dev Home alkalmazás sikeresen törlésre került. Dev Home was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Dev Home alkalmazás törlését. You cancelled removing the Dev Home app." -ForegroundColor Yellow
}

$answer10 = Read-Host "Szeretnéd törölni a PowerShell 2.0 alkalmazást? (y/n) Would you like to delete the PowerShell 2.0 app? (y/n)"
if ($answer10 -match "y") {
    dism /Online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2Root /NoRestart 2>$null
    Write-Host "A PowerShell 2.0 alkalmazás sikeresen törlésre került. PowerShell 2.0 was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a PowerShell 2.0 alkalmazás törlését. You cancelled removing the PowerShell 2.0 app." -ForegroundColor Yellow
}

$answer11 = Read-Host "Szeretnéd törölni a To Do alkalmazást? (y/n) Would you like to delete the To Do app? (y/n)"
if ($answer11 -match "y") {
    winget uninstall --id Microsoft.Todos_8wekyb3d8bbwe 2>$null
    Write-Host "A To Do alkalmazás sikeresen törlésre került. To Do was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a To Do alkalmazás törlését. You cancelled removing the To Do app." -ForegroundColor Yellow
}

$answer12 = Read-Host "Szeretnéd törölni a Filmek+TV/ZuneVideo alkalmazást? (y/n) Would you like to delete the Movies and TV/ZuneVideo app? (y/n)"
if ($answer12 -match "y") {
    winget uninstall --id Microsoft.ZuneVideo_8wekyb3d8bbwe 2>$null
    Write-Host "A Filmek+TV/ZuneVideo alkalmazás sikeresen törlésre került. Movies and TV/ZuneVideo were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Filmek+TV/ZuneVideo alkalmazás törlését. You cancelled removing the Movies and TV/ZuneVideo app." -ForegroundColor Yellow
}

$answer13 = Read-Host "Szeretnéd törölni a Bing időjárás alkalmazást? (y/n) Would you like to delete the Bing weather app? (y/n)"
if ($answer13 -match "y") {
    winget uninstall --id Microsoft.BingWeather_8wekyb3d8bbwe 2>$null
    Write-Host "A Bing időjárás alkalmazás sikeresen törlésre került. Bing weather was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing időjárás alkalmazás törlését. You cancelled removing the Bing weather app." -ForegroundColor Yellow
}

$answer14 = Read-Host "Szeretnéd törölni a Bing hírek alkalmazást? (y/n) Would you like to delete the Bing news app? (y/n)"
if ($answer14 -match "y") {
    winget uninstall --id Microsoft.BingNews_8wekyb3d8bbwe 2>$null
    Write-Host "A Bing news alkalmazás sikeresen törlésre került. Bing news was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing hírek alkalmazás törlését. You cancelled removing the Bing news app." -ForegroundColor Yellow
}

$answer15 = Read-Host "Szeretnéd törölni a Bing sportok alkalmazást? (y/n) Would you like to delete the Bing sports app? (y/n)"
if ($answer15 -match "y") {
    winget uninstall --id Microsoft.BingSports_8wekyb3d8bbwe 2>$null
    Write-Host "A Bing sportok alkalmazás sikeresen törlésre került. Bing sports was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing sportok alkalmazás törlését. You cancelled removing the Bing sports app." -ForegroundColor Yellow
}

$answer16 = Read-Host "Szeretnéd törölni a Bing Finanszírozás alkalmazást? (y/n) Would you like to delete the Bing Finance app? (y/n)"
if ($answer16 -match "y") {
    winget uninstall --id Microsoft.BingFinance_8wekyb3d8bbwe 2>$null
    Write-Host "A Bing Finanszírozás alkalmazás sikeresen törlésre került. Bing Finance was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing Finanszírozás alkalmazás törlését. You cancelled removing the Bing Finance app." -ForegroundColor Yellow
}

$answer17 = Read-Host "Szeretnéd törölni a Skype alkalmazást? (y/n) Would you like to delete the Skype app? (y/n)"
if ($answer17 -match "y") {
    winget uninstall --id Microsoft.SkypeApp_kzf8qxf38zg5c 2>$null
    Write-Host "A Skype alkalmazás sikeresen törlésre került. Skype was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Skype alkalmazás törlését. You cancelled removing the Skype app." -ForegroundColor Yellow
}

$answer18 = Read-Host "Szeretnéd törölni a Hangrögzítő alkalmazást? (y/n) Would you like to delete the Sound Recorder/Voice Recorder app? (y/n)"
if ($answer18 -match "y") {
    winget uninstall --id Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe 2>$null
    Write-Host "A Hangrögzítő alkalmazás sikeresen törlésre került. Sound Recorder/Voice Recorder were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Hangrögzítő alkalmazás törlését. You cancelled removing the Sound Recorder/Voice Recorder app." -ForegroundColor Yellow
}

$answer19 = Read-Host "Szeretnéd törölni a Paint3D alkalmazást? (y/n) Would you like to delete the Paint3D app? (y/n)"
if ($answer19 -match "y") {
    winget uninstall --id Microsoft.MSPaint3D_8wekyb3d8bbwe 2>$null
    Write-Host "A Paint3D alkalmazás sikeresen törlésre került. Paint3D was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Paint3D alkalmazás törlését. You cancelled removing the Paint3D app." -ForegroundColor Yellow
}

$answer20 = Read-Host "Szeretnéd törölni a Cortana alkalmazást? (y/n) Would you like to delete the Cortana app? (y/n)"
if ($answer20 -match "y") {
    winget uninstall --id Microsoft.549981C32F101_8wekyb3d8bbwe 2>$null
    Write-Host "A Cortana alkalmazás sikeresen törlésre került. Cortana was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Cortana alkalmazás törlését. You cancelled removing the Cortana app." -ForegroundColor Yellow
}

$answer21 = Read-Host "Szeretnéd törölni az XBOX konzol tásalkalmazást? (y/n) Would you like to delete the XBOX console comapnion app? (y/n)"
if ($answer21 -match "y") {
    winget uninstall --id Microsoft.XboxApp_8wekyb3d8bbwe 2>$null
    Write-Host "Az XBOX konzol társalkalmazás sikeresen törlésre került. XBOX Console Companion was  successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az XBOX konzol társalkalmazás törlését. You cancelled removing the XBOX Console Companion app." -ForegroundColor Yellow
}

$answer22 = Read-Host "Szeretnéd törölni a Copilot alkalmazást teljesen az egész rendszerből? (Lehet hogy nehéz lesz újratelepíteni ezt az alkalmazást.) (y/n) Would you like to delete the Copilot app completely from everywhere? (It might be difficult to reinstall this app.) (y/n)"
if ($answer22 -match "y") {
    winget uninstall --id Microsoft.Copilot_8wekyb3d8bbwe 2>$null
    $policyPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot"
    if (!(Test-Path $policyPath)) { New-Item -Path $policyPath -Force | Out-Null }
    New-ItemProperty -Path $policyPath -Name "TurnOffWindowsCopilot" -PropertyType DWord -Value 1 -Force | Out-Null
    $searchPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search"
    New-ItemProperty -Path $searchPath -Name "BingSearchEnabled" -PropertyType DWord -Value 0 -Force | Out-Null
    New-ItemProperty -Path $searchPath -Name "SearchboxTaskbarMode" -PropertyType DWord -Value 1 -Force | Out-Null
    $advancedPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
    New-ItemProperty -Path $advancedPath -Name "ShowCopilotButton" -PropertyType DWord -Value 0 -Force | Out-Null
    $userPolicyPath = "HKCU:\Software\Policies\Microsoft\Windows\WindowsCopilot"
    if (!(Test-Path $userPolicyPath)) { New-Item -Path $userPolicyPath -Force | Out-Null }
    New-ItemProperty -Path $userPolicyPath -Name "TurnOffWindowsCopilot" -PropertyType DWord -Value 1 -Force | Out-Null
    Stop-Process -Name explorer -Force; Start-Process explorer.exe
    New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCopilotButton" -PropertyType DWord -Value 0 -Force | Out-Null
    Stop-Process -Name explorer -Force; Start-Process explorer.exe
    Write-Host "A Copilot alkalmazás sikeresen törlésre került. Copilot was successfully removed." -ForegroundColor Yellow
} else {
    Write-Host "Megszakítottad a Copilot alkalmazás törlését. You cancelled removing the Copilot app." -ForegroundColor Yellow
}

$answer23 = Read-Host "Szeretnéd törölni a Bing Wallet alkalmazást? (y/n) Would you like to delete the Bing Wallet app? (y/n)"
if ($answer23 -match "y") {
    winget uninstall --id Microsoft.Wallet_8wekyb3d8bbwe 2>$null
    Write-Host "A Bing Wallet alkalmazás sikeresen törlésre került. Bing Wallet was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing Wallet alkalmazás törlését. You cancelled removing the Bing Wallet app." -ForegroundColor Yellow
}

$answer24 = Read-Host "Szeretnéd törölni a Sticky Notes Legacy (Cetlik) alkalmazást? (y/n) Would you like to delete the Sticky Notes Legacy (Cetlik) app? (y/n)"
if ($answer24 -match "y") {
    winget uninstall --id Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe 2>$null
    Write-Host "A Sticky Notes Legacy (Cetlik) alkalmazás sikeresen törlésre került. Sticky Notes Legacy (Cetlik) was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Sticky Notes Legacy (Cetlik) alkalmazás törlését. You cancelled removing the Sticky Notes Legacy (Cetlik) app." -ForegroundColor Yellow
}

$answer25 = Read-Host "Szeretnéd törölni a 3D Megjelenítő alkalmazást? (y/n) Would you like to delete the 3D Viewer app? (y/n)"
if ($answer25 -match "y") {
    winget uninstall --id Microsoft.Microsoft3DViewer_8wekyb3d8bbwe 2>$null
    Write-Host "A 3D Megjelenítő alkalmazás sikeresen törlésre került. 3D Viewer was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a 3D Megjelenítő alkalmazás törlését. You cancelled removing the 3D Viewer app." -ForegroundColor Yellow
}

$answer26 = Read-Host "Szeretnéd törölni a Microsoft Solitare Collection and Casual Games játékot? (y/n) Would you like to delete the Microsoft Solitare Collection and Casual Games game? (y/n)"
if ($answer26 -match "y") {
    winget uninstall --id Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe 2>$null
    Write-Host "A Microsoft Solitare Collection and Casual Games alkalmazás sikeresen törlésre került. Microsoft Solitare Collection and Casual Games were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Microsoft Solitare Collection and Casual Games alkalmazás törlését. You cancelled removing the Microsoft Solitare Collection and Casual Games app." -ForegroundColor Yellow
}

$answer27 = Read-Host "Szeretnéd törölni a Kapcsolatok alkalmazást? (y/n) Would you like to delete the People app? (y/n)"
if ($answer27 -match "y") {
    winget uninstall --id Microsoft.People_8wekyb3d8bbwe 2>$null
    Write-Host "A Kapcsolatok alkalmazás sikeresen törlésre került. People was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Kapcsolatok alkalmazás törlését. You cancelled removing the People app." -ForegroundColor Yellow
}

$answer28 = Read-Host "Szeretnéd törölni a Mixed Reality Portal alkalmazást? (y/n) Would you like to delete the Mixed Reality Portal app? (y/n)"
if ($answer28 -match "y") {
    winget uninstall --id Microsoft.MixedReality.Portal_8wekyb3d8bbwe 2>$null
    Write-Host "A Mixed Reality Portal alkalmazás sikeresen törlésre került. Mixed Reality Portal was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Mixed Reality Portal alkalmazás törlését. You cancelled removing the Mixed Reality Portal app." -ForegroundColor Yellow
}

$answer29 = Read-Host "Szeretnéd törölni a Bing Térképek alkalmazást? (y/n) Would you like to delete the Bing Maps app? (y/n)"
if ($answer29 -match "y") {
    winget uninstall --id Microsoft.WindowsMaps_8wekyb3d8bbwe 2>$null
    Write-Host "A Bing Térképek alkalmazás sikeresen törlésre került. Bing Maps was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing Térképek alkalmazás törlését. You cancelled removing the Bing Maps app." -ForegroundColor Yellow
}

$answer30 = Read-Host "Szeretnéd törölni a Tippek/Kezdő lépések alkalmazást? (y/n) Would you like to delete the Tips/Get started app? (y/n)"
if ($answer30 -match "y") {
    winget uninstall --id Microsoft.Getstarted_8wekyb3d8bbwe 2>$null
    Write-Host "A Tippek/Kezdő lépések alkalmazás sikeresen törlésre került. Tips/Get started were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Tippek/Kezdő lépések alkalmazás törlését. You cancelled removing the Tips/Get started app." -ForegroundColor Yellow
}

$answer31 = Read-Host "Szeretnéd törölni a Microsoft Family alkalmazást? (y/n) Would you like to delete the Microsoft Family app? (y/n)"
if ($answer31 -match "y") {
    winget uninstall --id Microsoft.Family_8wekyb3d8bbwe 2>$null
    Write-Host "A Microsoft Family alkalmazás sikeresen törlésre került. Microsoft Family was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Microsoft Family alkalmazás törlését. You cancelled removing the Microsoft Family app." -ForegroundColor Yellow
}

$answer32 = Read-Host "Szeretnéd törölni a Clipchamp alkalmazást? (y/n) Would you like to delete the Clipchamp app? (y/n)"
if ($answer32 -match "y") {
    winget uninstall --id Microsoft.Clipchamp.Clipchamp_8wekyb3d8bbwe 2>$null
    Write-Host "A Clipchamp alkalmazás sikeresen törlésre került. Clipchamp was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Clipchamp alkalmazás törlését. You cancelled removing the Clipchamp app." -ForegroundColor Yellow
}

$answer33 = Read-Host "Szeretnéd törölni a Windows Kamera alkalmazást? (y/n) Would you like to delete the Windows Camera app? (y/n)"
if ($answer33 -match "y") {
    winget uninstall --id Microsoft.WindowsCamera_8wekyb3d8bbwe 2>$null
    Write-Host "A Windows Kamera alkalmazás sikeresen törlésre került. Windows Camera was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Windows Kamera alkalmazás törlését. You cancelled removing the Windows Camera app." -ForegroundColor Yellow
}

$answer34 = Read-Host "Szeretnéd törölni a Problémarögzítő alkalmazást? (y/n) Would you like to delete the Steps Recorder app? (y/n)"
if ($answer34 -match "y") {
    dism /Online /Disable-Feature /FeatureName:Microsoft-Windows-StepsRecorder /NoRestart 2>$null
    Write-Host "A Problémarögzítő alkalmazás sikeresen törlésre került. Steps Recorder was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Problémarögzítő alkalmazás törlését. You cancelled removing the Steps Recorder app." -ForegroundColor Yellow
}

$answer35 = Read-Host "Szeretnéd törölni a Math Input Panel alkalmazást? (y/n) Would you like to delete the Math Input Panel app? (y/n)"
if ($answer35 -match "y") {
    Disable-WindowsOptionalFeature -Online -FeatureName "MathInputPanel" -ErrorAction SilentlyContinue
    Write-Host "A Math Input Panel alkalmazás sikeresen törlésre került. Math Input Panel was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Math Input Panel alkalmazás törlését. You cancelled removing the Math Input Panel app." -ForegroundColor Yellow
}

$answer36 = Read-Host "Szeretnéd törölni a Fax és Scan alkalmazásokat/szolgáltatásokat? (y/n) Would you like to delete the Fax and Scan apps/services? (y/n)"
if ($answer36 -match "y") {
    Get-WindowsCapability -Name *Fax* -Online | Remove-WindowsCapability -Online 2>$null
    dism /Online /Disable-Feature /FeatureName:FaxServicesClientPackage /NoRestart 2>$null
    Write-Host "A Fax és Scan alkalmazások/szolgáltatások sikeresen törlésre kerültek. Fax and Scan were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Fax és Scan alkalmazások/szolgáltatások törlését. You cancelled removing the Fax and Scan apps/services." -ForegroundColor Yellow
}

$answer37 = Read-Host "Szeretnéd törölni a Telefon kapcsolat alkalmazást? (y/n) Would you like to delete the Phone Link/Your Phone app? (y/n)"
if ($answer37 -match "y") {
    winget uninstall --id Microsoft.YourPhone_8wekyb3d8bbwe 2>$null
    Write-Host "A Telefon kapcsolat alkalmazás sikeresen törlésre került. Phone Link/Your Phone were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a telefon kapcsolat alkalmazás törlését. You cancelled removing the Phone Link/Your Phone app." -ForegroundColor Yellow
}

$answer38 = Read-Host "Szeretnéd törölni a Windows PowerShell ISE alkalmazást? (y/n) Would you like to delete the Windows PowerShell ISE app? (y/n)"
if ($answer38 -match "y") {
    Uninstall-WindowsCapability -Online -Name "Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0" -ErrorAction SilentlyContinue
    Write-Host "A Windows PowerShell ISE alkalmazás sikeresen törlésre került. Windows PowerShell ISE was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Windows PowerShell ISE alkalmazás törlését. You cancelled removing the Windows PowerShell ISE app." -ForegroundColor Yellow
}

$answer39 = Read-Host "Szeretnéd törölni a Windows Jegyzettömb alkalmazást? (y/n) Would you like to delete the Windows Notepad app? (y/n)"
if ($answer39 -match "y") {
    Get-AppxPackage -Name "*WindowsNotepad*" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Uninstall-WindowsCapability -Online -Name "Microsoft.Windows.Notepad~~~~0.0.1.0" 2>$null
    Write-Host "A Windows Jegyzettömb alkalmazás sikeresen törlésre került. Windows Notepad was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Windows Jegyzettömb alkalmazás törlését. You cancelled removing the Windows Notepad app." -ForegroundColor Yellow
}

$answer40 = Read-Host "Szeretnéd törölni a Karaktertábla alkalmazást? (y/n) Would you like to delete the Character Map app? (y/n)"
if ($answer40 -match "y") {
    Uninstall-WindowsCapability -Online -Name "OneCore.CharMap~~~~0.0.1.0" -ErrorAction SilentlyContinue
    Write-Host "A Karaktertábla alkalmazás sikeresen törlésre került. Character map was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Karaktertábla alkalmazás törlését. You cancelled removing the Character Map app." -ForegroundColor Yellow
}

$answer41 = Read-Host "Szeretnéd törölni a Windows Media Player Legacy alkalmazást? (y/n) Would you like to delete the Windows Media Player Legacy app? (y/n)"
if ($answer41 -match "y") {
    Uninstall-WindowsCapability -Online -Name "Media.WindowsMediaPlayer~~~~0.0.12.0" -ErrorAction SilentlyContinue
    Write-Host "A Windows Media Player Legacy alkalmazás sikeresen törlésre került. Windows Media Player Legacy was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Windows Media Player Legacy alkalmazás törlését. You cancelled removing the Windows Media Player Legacy app." -ForegroundColor Yellow
}

$answer42 = Read-Host "Szeretnéd törölni a Távoli asztali kapcsolat alkalmazást? (y/n) Would you like to delete the Remote Desktop Connection app? (y/n)"
if ($answer42 -match "y") {
    Get-AppxPackage -Name "*RemoteDesktop*" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Write-Host "A Távoli asztali kapcsolat alkalmazás sikeresen törlésre került. Remote Desktop Connection was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Távoli asztali kapcsolat alkalmazás törlését. You cancelled removing the Remote Desktop Connection app." -ForegroundColor Yellow
}

$answer43 = Read-Host "Szeretnéd törölni a 3D Builder alkalmazást? (y/n) Would you like to delete the 3D Builder app? (y/n)"
if ($answer43 -match "y") {
    Get-AppxPackage *3dbuilder* | Remove-AppxPackage 2>$null
    Write-Host "A 3D Builder alkalmazás sikeresen törlésre került. 3D Builder was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a 3D Builder alkalmazás törlését. You cancelled removing the 3D Builder app." -ForegroundColor Yellow
}

$answer44 = Read-Host "Szeretnéd törölni a Power Automate alkalmazást? (y/n) Would you like to delete the Power Automate app? (y/n)"
if ($answer44 -match "y") {
    Get-AppxPackage *PowerAutomateDesktop* | Remove-AppxPackage 2>$null
    Write-Host "A Power Automate alkalmazás sikeresen törlésre került. Power Automate was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Power Automate alkalmazás törlését. You cancelled removing the Power Automate app." -ForegroundColor Yellow
}

$answer45 = Read-Host "Szeretnéd törölni a OneNote alkalmazást? (y/n) Would you like to delete the OneNote app? (y/n)"
if ($answer45 -match "y") {
    Get-AppxPackage *OneNote* | Remove-AppxPackage 2>$null
    Write-Host "A OneNote alkalmazás sikeresen törlésre került. OneNote was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a OneNote alkalmazás törlését. You cancelled removing the OneNOte app." -ForegroundColor Yellow
}

$answer46 = Read-Host "Szeretnéd törölni a OneDrive/SkyDrive alkalmazást? (y/n) Would you like to delete the OneDrive/SkyDrive app? (y/n)"
if ($answer46 -match "y") {
    Get-AppxPackage *OneDrive* | Remove-AppxPackage 2>$null
    winget uninstall --name "OneDrive" 2>$null
    Write-Host "A OneDrive/SkyDrive alkalmazás sikeresen törlésre került. OneDrive/SkyDrive were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a OneDrive/SkyDrive alkalmazás törlését. You cancelled removing the OneDrive/SkyDrive app." -ForegroundColor Yellow
}

$answer47 = Read-Host "Szeretnéd törölni a Posta és Naptár alkalmazásokat? (y/n) Would you like to delete the Mail and Calendar apps? (y/n)"
if ($answer47 -match "y") {
    Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage 2>$null
    winget uninstall --id "9WZDNCRFHVJL" 2>$null
    Write-Host "A Post és Naptár alkalmazások sikeresen törlésre kerültek. Mail and Calendar were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Posta és Naptár alkalmazások törlését. You cancelled removing the Mail and Calendar apps." -ForegroundColor Yellow
}

$answer48 = Read-Host "Szeretnéd törölni a 3D nyomtatási szolgáltatást? (y/n) Would you like to delete the 3D printing service? (y/n)"
if ($answer48 -match "y") {
    Get-AppxPackage *print3d* | Remove-AppxPackage 2>$null
    Write-Host "A 3D nyomtatási szolgáltatás sikeresen törlésre került. The 3D printing service was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a 3D nyomtatási szolgáltatás törlését. You cancelled removing the 3D printing service." -ForegroundColor Yellow
}

$answer49 = Read-Host "Szeretnéd törölni a Paint alkalmazást? (y/n) Would you like to delete the Paint app? (y/n)"
if ($answer49 -match "y") {
    winget uninstall --id Microsoft.Paint_8wekyb3d8bbwe 2>$null
    Write-Host "A Paint alkalmazás sikeresen törlésre került. Paint was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Paint alkalmazás törlését. You cancelled removing the Paint app." -ForegroundColor Yellow
}

$answer50 = Read-Host "Szeretnéd törölni Microsoft Teams alkalmazást? (y/n) Would you like to delete the Microsoft Teams app? (y/n)"
if ($answer50 -match "y") {
    winget uninstall --id Microsoft.Teams_8wekyb3d8bbwe 2>$null
    winget uninstall --id MicrosoftTeams_8wekyb3d8bbwe 2>$null
    Write-Host "A Microsoft Teams alkalmazás sikeresen törlésre került. Microsoft Teams was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Microsoft Teams alkalmazás törlését. You cancelled removing the Microsoft Teams app." -ForegroundColor Yellow
}

$answer51 = Read-Host "Szeretnéd törölni az XBOX Identity Provider alkalmazást? (y/n) Would you like to delete the XBOX Identity Provider app? (y/n)"
if ($answer51 -match "y") {
    winget uninstall --id Microsoft.XboxIdentityProvider_8wekyb3d8bbwe 2>$null
    Write-Host "Az XBOX Identity Provider alkalmazás sikeresen törlésre került. XBOX Identity Provider was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az XBOX Identity Provider alkalmazás törlését. You cancelled removing the XBOX Identity Provider app." -ForegroundColor Yellow
}

$answer52 = Read-Host "Szeretnéd törölni az XBOX alkalmazást? (y/n) Would you like to delete the XBOX app? (y/n)"
if ($answer52 -match "y") {
    winget uninstall --id Microsoft.GamingApp_8wekyb3d8bbwe 2>$null
    Write-Host "Az XBOX alkalmazás sikeresen törlésre került. XBOX was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az XBOX alkalmazás törlését. You cancelled removing the XBOX app." -ForegroundColor Yellow
}

$answer53 = Read-Host "Szeretnéd törölni az XBOX Game Bar alkalmazást? (y/n) Would you like to delete the XBOX Game Bar app? (y/n)"
if ($answer53 -match "y") {
    winget uninstall --id Microsoft.XboxGameOverlay_8wekyb3d8bbwe 2>$null
    Write-Host "A XBOX Game Bar alkalmazás sikeresen törlésre került. XBOX Game Bar was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az XBOX Game Bar alkalmazás törlését. You cancelled removing the XBOX Game Bar app." -ForegroundColor Yellow
}

$answer54 = Read-Host "Szeretnéd törölni az Outlook (new) alkalmazást? (y/n) Would you like to delete the Outlook (new) app? (y/n)"
if ($answer54 -match "y") {
    winget uninstall --id Microsoft.OutlookForWindows_8wekyb3d8bbwe 2>$null
    Get-AppxPackage *Microsoft.OutlookForWindows* | Remove-AppxPackage 2>$null
    Write-Host "Az Outlook new alkalmazás sikeresen törlésre került. Outlook new was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az Outlook new alkalmazás törlését. You cancelled removing the Outlook new app." -ForegroundColor Yellow
}

$answer55 = Read-Host "Szeretnéd törölni az Óra alkalmazást? (y/n) Would you like to delete the Clock/Alarms and Clock app? (y/n)"
if ($answer55 -match "y") {
    winget uninstall --id Microsoft.WindowsAlarms_8wekyb3d8bbwe 2>$null
    Write-Host "Az Óra alkalmazás sikeresen törlésre került. Clock/Alarms and Clock were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az Óra alkalmazás törlését. You cancelled removing the Clock/Alarms and Clock app." -ForegroundColor Yellow
}

$answer56 = Read-Host "Szeretnéd törölni a Gyors Segítség alkalmazást? (y/n) Would you like to delete the Quick Assist app? (y/n)"
if ($answer56 -match "y") {
    winget uninstall --id Microsoft.QuickAssist_8wekyb3d8bbwe 2>$null
    Write-Host "A Gyors Segítség alkalmazás sikeresen törlésre került. Quick Assist was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Gyors Segítség alkalmazás törlését. You cancelled removing the Quick Assist app." -ForegroundColor Yellow
}

$answer57 = Read-Host "Szeretnéd törölni az Internet Explorer alkalmazást? (y/n) Would you like to delete the Internet Explorer app? (y/n)"
if ($answer57 -match "y") {
    Get-WindowsCapability -Online -Name "Browser.InternetExplorer~~~~0.0.11.0" -ErrorAction SilentlyContinue | Remove-WindowsCapability -Online -ErrorAction SilentlyContinue 2>$null
    Disable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-amd64" -NoRestart -ErrorAction SilentlyContinue 2>$null
    Disable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-x86" -NoRestart -ErrorAction SilentlyContinue 2>$null
    $iePackages = @("Microsoft-Windows-InternetExplorer-Optional-Package", "InternetExplorer-Optional-Package")
    foreach ($pkg in $iePackages) {
        dism /Online /Disable-Feature /FeatureName:$pkg /NoRestart 2>$null
    }
    Start-Process wusa.exe -ArgumentList "/uninstall /kb:956390 /quiet /norestart" -Wait 2>$null
    Write-Host "Az Internet Explorer alkalmazás sikeresen törlésre került. Internet Explorer was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az Internet Explorer alkalmazás törlését. You cancelled removing the Internet Explorer app." -ForegroundColor Yellow
}

$answer58 = Read-Host "Szeretnéd törölni az XPS Megjelenítő alkalmazást? (y/n) Would you like to delete the XPS Viewer app? (y/n)"
if ($answer58 -match "y") {
    winget uninstall --id Microsoft.XPSViewer_8wekyb3d8bbwe 2>$null
    dism /online /disable-feature /featurename:XPS.Viewer /norestart 2>$null
    Write-Host "Az XPS Megjelenítő alkalmazás sikeresen törlésre került. XPS Viewer was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az XPS Megjelenítő alkalmazás törlését. You cancelled removing the XPS Viewer app." -ForegroundColor Yellow
}

$answer59 = Read-Host "Szeretnéd törölni a Számológép alkalmazást? (y/n) Would you like to delete the Calculator app? (y/n)"
if ($answer59 -match "y") {
    winget uninstall --id Microsoft.WindowsCalculator_8wekyb3d8bbwe 2>$null
    Write-Host "A Számológép alkalmazás sikeresen törlésre került. Calculator was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Számológép alkalmazás törlését. You cancelled removing the Calculator app." -ForegroundColor Yellow
}

$answer60 = Read-Host "Szeretnéd törölni az Olvasó alkalmazást? (y/n) Would you like to delete the Reader app? (y/n)"
if ($answer60 -match "y") {
    Get-AppxPackage *reader* | Remove-AppxPackage 2>$null
    Write-Host "Az Olvasó alkalmazás sikeresen törlésre került. Reader was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az Olvasó alkalmazás törlését. You cancelled removing the Reader app." -ForegroundColor Yellow
}

$answer61 = Read-Host "Szeretnéd törölni a Bing Étel-Ital alkalmazást? (y/n) Would you like to delete the Dev Bing Food and Drink app? (y/n)"
if ($answer61 -match "y") {
    Get-AppxPackage *foodanddrink* | Remove-AppxPackage 2>$null
    Write-Host "A Bing Étel-Ital alkalmazás sikeresen törlésre került. Bing Food and Drink were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing Étel-Ital alkalmazás törlését. You cancelled removing the Bing Food and Drink app." -ForegroundColor Yellow
}

$answer62 = Read-Host "Szeretnéd törölni a Bing Egészség és fitness alkalmazást? (y/n) Would you like to delete the Bing Health & Fitness app? (y/n)"
if ($answer62 -match "y") {
    Get-AppxPackage *healthandfitness* | Remove-AppxPackage 2>$null
    Write-Host "A Bing Egészség és Fitness alkalmazás sikeresen törlésre került. Bing Health & Fitness were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing Egészség és Fitness alkalmazás törlését. You cancelled removing the Bing Health & Fitness app." -ForegroundColor Yellow
}

$answer63 = Read-Host "Szeretnéd törölni a Bing utazás alkalmazást? (y/n) Would you like to delete the Bing travel app? (y/n)"
if ($answer63 -match "y") {
    Get-AppxPackage *travel* | Remove-AppxPackage 2>$null
    Write-Host "A Bing utazás alkalmazás sikeresen törlésre került. Bing travel was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Bing utazás alkalmazás törlését. You cancelled removing the Bing travel app." -ForegroundColor Yellow
}

$answer64 = Read-Host "Szeretnéd törölni a Wordpad alkalmazást? (y/n) Would you like to delete the Wordpad app? (y/n)"
if ($answer64 -match "y") {
    Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-WordPad" -NoRestart -ErrorAction SilentlyContinue
    Write-Host "A Wordpad alkalmazás sikeresen törlésre került. Wordpad was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Wordpad alkalmazás törlését. You cancelled removing the Wordpad app." -ForegroundColor Yellow
}

$answer65 = Read-Host "Szeretnéd törölni a nyomtatási szolgáltatást? (y/n) Would you like to delete the printing service? (y/n)"
if ($answer65 -match "y") {
    Disable-WindowsOptionalFeature -Online -FeatureName "Printing-Foundation-Features" -NoRestart -ErrorAction SilentlyContinue
    Write-Host "A nyomtatási szolgáltatás sikeresen törlésre került. The printing service was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a nyomtatási szolgáltatás törlését. You cancelled removing the printing service app." -ForegroundColor Yellow
}

$answer66 = Read-Host "Szeretnéd törölni az érintőképernyő szolgáltatást? (y/n) Would you like to delete the touch screen service? (y/n)"
if ($answer66 -match "y") {
    Disable-WindowsOptionalFeature -Online -FeatureName "TabletPCOptionalComponents" -NoRestart -ErrorAction SilentlyContinue
    Write-Host "Az érintőképernyő szolgáltatás sikeresen törlésre került. The touch screen service was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad az érintőképernyő szolgáltatás törlését. You cancelled removing the Touch Screen service." -ForegroundColor Yellow
}

$answer67 = Read-Host "Szeretnéd törölni a Microsoft 365 Copilot (Office)/Microsoft 365 Office és a Microsoft Office alkalmazásokat? (y/n) Would you like to delete the Microsoft 365 Copilot (Office)/Microsoft 365 Office and Microsoft office apps? (y/n)"
if ($answer67 -match "y") {
    Get-Package -Name "*Microsoft 365*" 2>$null | Uninstall-Package 2>$null
    Get-AppxPackage -Name "*Microsoft.Office.Desktop*" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-Package -Name "*Microsoft Office*" 2>$null | Where-Object { $_.Version -like "16.*" -or $_.Name -like "*2019*" -or $_.Name -like "*2022*" } 2>$null | Uninstall-Package 2>$null
    Get-Package -Name "*Microsoft Office * 2013*" 2>$null | Uninstall-Package 2>$null
    Get-CimInstance -ClassName Win32_Product 2>$null | Where-Object { $_.Name -like "*Microsoft Office * 2013*" } 2>$null | Invoke-CimMethod -MethodName Uninstall 2>$null
    Write-Host "A Microsoft 365 Copilot (Office)/Microsoft 365 Office és a Microsoft Office alkalmazások sikeresen törlésre kerültek. Microsoft 365 Copilot (Office)/Microsoft 365 Office and Microsoft office apps were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Microsoft 365 Copilot (Office)/Microsoft 365 Office és a Microsoft Office alkalmazások törlését. You cancelled removing the Microsoft 365 Copilot (Office)/Microsoft 365 Office and Microsoft office apps." -ForegroundColor Yellow
}

$answer68 = Read-Host "Szeretnéd törölni a Minecraft játékokat? (y/n) Would you like to delete the Minecraft games? (y/n)"
if ($answer68 -match "y") {
    Get-Package -Name "*Minecraft*" 2>$null | Where-Object { $_.ProviderName -eq "msi" -or $_.Name -like "*Java*" } | Uninstall-Package 2>$null
    Get-AppxPackage -Name "Microsoft.MinecraftUWP" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-AppxPackage -Name "Microsoft.MinecraftEducationEdition" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-Package -Name "*Minecraft Education*" 2>$null | Uninstall-Package 2>$null
    Get-AppxPackage -Name "Microsoft.MinecraftWindowsBeta" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-AppxPackage -Name "Microsoft.4294967296MinecraftLauncher" -AllUsers 2>$null | Remove-AppxPackage -AllUsers 2>$null
    Get-Package -Name "*Minecraft Launcher*" 2>$null | Uninstall-Package 2>$null
    Write-Host "A Minecraft játékok sikeresen törlésre kerültek. Minecraft games were successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Minecraft játékok törlését. You cancelled removing the Minecraft games." -ForegroundColor Yellow
}

$answer69 = Read-Host "Szeretnéd törölni a Fényképek alkalmazást? (y/n) Would you like to delete the Photos app? (y/n)"
if ($answer69 -match "y") {
    winget uninstall --id Microsoft.Windows.Photos_8wekyb3d8bbwe 2>$null
    Write-Host "A Fényképek alkalmazás sikeresen törlésre került. The Photos app was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Fényképek alkalmazás törlését. You cancelled removing the Microsoft Photos app." -ForegroundColor Yellow
}

$answer70 = Read-Host "Szeretnéd törölni a Képmetsző/Metszet és vázlat alkalmazást? (y/n) Would you like to delete the Snipping Tool/Snip & Sketch app? (y/n)"
if ($answer70 -match "y") {
    winget uninstall --id Microsoft.ScreenSketch_8wekyb3d8bbwe 2>$null
    Get-WindowsCapability -Online -Name "Microsoft.Windows.SnippingTool~~~~0.0.1.0" 2>$null | Remove-WindowsCapability -Online 2>$null
    Write-Host "A Képmetsző alkalmazás sikeresen törlésre került. Snipping Tool was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Képmetsző alkalmazás törlését. You cancelled removing the Snipping Tool app." -ForegroundColor Yellow
}

$answer71 = Read-Host "Szeretnéd törölni a Windows Terminal alkalmazást? (y/n) Would you like to delete the Windows Terminal app? (y/n)"
if ($answer71 -match "y") {
    winget uninstall --id Microsoft.WindowsTerminal_8wekyb3d8bbwe 2>$null
    Write-Host "A Windows Terminal alkalmazás sikeresen törlésre került. Windows Terminal app was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Windows Terminal alkalmazás törlését. You cancelled removing the Windows Terminal app." -ForegroundColor Yellow
}

$answer72 = Read-Host "Szeretnéd törölni a Microsoft Edge böngészőt? (y/n) Would you like to delete the Microsoft Edge browser? (y/n)"
if ($answer72 -match "y") {
    winget uninstall --id Microsoft.Edge 2>$null
    Write-Host "A Microsoft Edge böngésző sikeresen törlésre került. Microsoft Edge browser was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Microsoft Edge böngésző törlését. You cancelled removing the Microsoft Edge browser." -ForegroundColor Yellow
}

$answer73 = Read-Host "Szeretnéd törölni a Windows Media Player (New)/Zune Music/Groove Zene alkalmazást? (y/n) Would you like to delete the Windows Media Player (New)/Zune Music/Groove Music app? (y/n)"
if ($answer73 -match "y") {
    winget uninstall --id Microsoft.ZuneMusic_8wekyb3d8bbwe 2>$null
    Write-Host "A Windows Media Player (New)/Zune Music/Groove Zene alkalmazás sikeresen törlésre került. Windows Media Player (New)/Zune Music/Groove Music app was successfully removed." -ForegroundColor Green
} else {
    Write-Host "Megszakítottad a Windows Media Player (New)/Zune Music/Groove Zene alkalmazás törlését. You cancelled removing the Windows Media Player (New)/Zune Music/Groove Music app." -ForegroundColor Yellow
}

Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force
Write-Host "Végeztünk! Indítsd újra a gépet! We're done! Please restart your computer!" -ForegroundColor Cyan
pause