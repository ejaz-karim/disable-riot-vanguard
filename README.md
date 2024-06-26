# Disable Riot Vanguard
Disable or Enable Riot's kernel level anti-cheat Vanguard from startup for Valorant/League of Legends using simple executable batch scripts. Administrator privilege is required to run these scripts, as it is needed to change the startup type of Vanguard.

## How to check if Vanguard is disabled
Type ```sc query vgk``` and ```sc query vgc``` into Command Prompt. Open Task Manager and see if Riot Vanguard (vgtray.exe) appears in the Startup tab. Vanguard is disabled if the commands return that the states of vgk and vgc are stopped, and Riot Vanguard (vgtray.exe) is not listed in the Startup tab of Task Manager.
