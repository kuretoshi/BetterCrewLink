!macro customInit
  StrCmp $INSTDIR "$LocalAppData\Programs\bettercrewlinkkai" 0 +2
    StrCpy $INSTDIR "$LocalAppData\Programs\bettercrewlinkkailite"
!macroend

!macro customCheckAppRunning
  DetailPrint "Closing TanukiBCLLite before installing local build."
  nsExec::ExecToLog 'cmd /c taskkill /f /im "TanukiBCLLite.exe" /fi "USERNAME eq %USERNAME%"'
  Sleep 500
  Delete "$INSTDIR\resources\app.asar"
  RMDir /r "$INSTDIR\resources\app"
!macroend
