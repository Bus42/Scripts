@echo off
cls
color 02

set /p _character="Enter your character's name: "
echo. > %_character%.txt
cls
set /p _rpBoost="Do you want the RP stat boost? This will override your current SPECIAL stats. Enter 0 for no and 1 for yes: "
if %_rpBoost% equ 1 (
    echo player.setav strength 3 >> %_character%.txt
    echo S 3
    echo player.setav perception 5 >> %_character%.txt
    echo P 5
) else (
    echo player.setav strength 2 >> %_character%.txt
    echo S 2
    echo player.setav perception 4 >> %_character%.txt
    echo P 4
)
echo player.setav endurance 3 >> %_character%.txt
echo E 3
echo player.setav charisma 6 >> %_character%.txt
echo C 6
echo player.setav intelligence 5 >> %_character%.txt
echo I 5
echo player.setav agility 3 >> %_character%.txt
echo A 3
echo player.setav luck 5 >> %_character%.txt
echo L 5
pause
cls

set /p _rpPerks="Do you want the RP perks? Enter 0 for no and 1 for yes: "
if %_rpPerks% equ 1 (
    @REM Black Widow level 1
    echo player.addperk 0004A0D4 >> %_character%.txt
    echo Black Widow added
    @REM Animal Friend level 1
    echo player.addperk 0001E67F >> %_character%.txt
    echo Animal Friend added
    @REM Wasteland Whisperer level1 1
    echo player.addperk 001D248A >> %_character%.txt
    echo Wasteland Whisperer added
)
@REM Remove 10mm ammo
echo player.removeitem 0001F276 999 >> %_character%.txt
@REM Remove 10mm
echo player.removeitem 00004822 1 >> %_character%.txt
pause
cls

echo In order to provide you with the correct loadout, you will need to get some information from the game. When you search in the game console you will see an 8-character string surrounded by parentheses in the data that is returned - this is the string we are looking for. This script will walk you through the process.
pause
cls

echo Launch Fallout 4. Once you are at the game menu press the ~ key to open the developer console then alt+tab back to this script
echo NOTE: You cannot open the developer console in survival mode. If you want to play survival mode and use this config script you will need to keep the game in normal mode until you have exited the vault, run the script, then switch to survival mode
pause
cls

echo In the developer console, enter: help "50 pistol" and note the first four characters of the code in the returned data
echo Tip: you can highlight the command above and right-click to automatically copy to the clipboard. Then, when you tab to the game console, you can press ctrl+v to paste the command.
pause
cls

set /p _cw="Enter the first four character of the Combined Arms code: "
echo starting weapon removed
echo Combined Arms Desert Eagle .50 Pistol added
pause
cls

echo In the developer console, enter: help "call me yours choker" and note the first four characters of the code in the returned data
pause
cls

set /p _ff="Enter the first four characters of the Fetish Fashion code: "
echo DX Fetish Fashion items added
pause
cls

echo In the developer console, enter: help "reverse combat" and note the first five characters of the code in the returned data
pause
cls

set /p _rc="Enter the first five character of the Reverse Combat Armor code: "
echo Reverse Combat Armor and gloves added
pause
cls

@REM Get the desired number of rounds
set /p _ammoCount="How many rounds of ammunition do you want: "
@REM Remove existing rounds added by Combined Arms
echo player.removeitem %_cw%5C0D 999 >> %_character%.txt
echo starting ammunition removed

@REM Add the specified number of .50 pistol rounds
echo player.additem %_cw%5c0d %_ammoCount% >> %_character%.txt
echo %_ammoCount% rounds of .50 pistol ammunition added
pause
cls

@REM equip Combined Arms Desert Eagle
echo player.equipitem %_cw%0F9C >> %_character%.txt

@REM Let the player keep the vault suit if they want it since it is a replacer
set /p _keepVaultSuit= "Do you want to keep the Sexy Vault Suit? Enter 1 for yes or 0 for no: "
if %_keepVaultSuit% equ 1 (
    echo Vault suit unequipped but still in inventory
    @REM Unequip vault suit
    echo player.unequipitem 0001EED7 >> %_character%.txt
) else (
    @REM Remove vault suit from inventory
    echo player.removeitem 0001EED7 >> %_character%.txt
)

@REM Add and equip choker, prevent duplicates
echo player.removeitem %_ff%C514 1 >> %_character%.txt
echo player.additem %_ff%C514 1 >> %_character%.txt
echo player.equipitem %_ff%C514 >> %_character%.txt

@REM Add and equip top straps, prevent duplicates
echo player.removeitem %_ff%9EFF 1 >> %_character%.txt
echo player.additem %_ff%9EFF 1 >> %_character%.txt
echo player.equipitem %_ff%9EFF >> %_character%.txt

@REM Add and equip bottom straps, prevent duplicates
echo player.removeitem %_ff%9F05 1 >> %_character%.txt
echo player.additem %_ff%9F05 1 >> %_character%.txt
echo player.equipitem %_ff%9F05 >> %_character%.txt

@REM Add and equip gauntlets, prevent duplicates
echo player.removeitem %_ff%9EFC 1 >> %_character%.txt
echo player.additem %_ff%9EFC 1 >> %_character%.txt
echo player.equipitem %_ff%9EFC >> %_character%.txt

@REM Add and equip combat armor, prevent duplicates
echo player.removeitem %_rc%F9C 1 >> %_character%.txt
echo player.additem %_rc%F9C 1 >> %_character%.txt
echo player.equipitem %_rc%F9C >> %_character%.txt

@REM Add and equip combat armor gloves, prevent duplicates
echo player.removeitem %_rc%F9A 1 >> %_character%.txt
echo player.additem %_rc%F9A 1 >> %_character%.txt
echo player.equipitem %_rc%F9A >> %_character%.txt

echo Script configuration complete.
@REM The output string needs to be assembled before being printed to the screen
set message= Enter "bat %_character%" in the developer console to apply the RP changes
echo %message%
echo If any items are missing, check the id codes again from the developer console.
pause
cls
exit /b