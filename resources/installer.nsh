!macro customCheckAppRunning
  DetailPrint "Closing TanukiBCL before installing local build."
  nsExec::ExecToLog 'cmd /c taskkill /f /im "TanukiBCL.exe" /fi "USERNAME eq %USERNAME%"'
  Sleep 500
  Delete "$INSTDIR\resources\app.asar"
  RMDir /r "$INSTDIR\resources\app"
!macroend
