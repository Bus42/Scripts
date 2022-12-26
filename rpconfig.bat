@echo off
cls
set /p _character="Enter your character's name: "; This will be the name of the created text file
echo. > rpcreate.%_character%.txt
echo Enter bat rpcreate.%character% in the developer console to apply the RP changes
pause
set /p _rpBoost="Do you want the RP stat boost? Enter 0 for no and 1 for yes: "
if %_rpBoost% equ 1 (
    echo player.setav strength 3 >> %_character%.txt
    echo player.setav perception 5 >> %_character%.txt
) else (
    echo player.setav strength 2 >> %_character%.txt
    echo player.setav perception 4 >> %_character%.txt
)
echo player.setav endurance 3 >> %_character%.txt
echo player.setav charisma 6 >> %_character%.txt
echo player.setav intelligence 5 >> %_character%.txt
echo player.setav agility 3 >> %_character%.txt
echo player.setav luck 5 >> %_character%.txt
set /p _rpPerks="Do you want the RP perks? Enter 0 for no and 1 for yes: "
if %_rpPerks% equ 1 (
    echo player.addperk 00019AA3 >> %_character%.txt
    echo player.addperk 0001E67F >> %_character%.txt
    echo player.addperk 001D248A >> %_character%.txt
)
echo player.removeitem 0001F276 100 >> %_character%.txt
echo player.removeitem 00004822 1 >> %_character%.txt
echo Hint: Open the developer console and enter: help "desert eagle"
set /p _cw="Combined Arms code: "
echo Hint: Open the developer console and enter: help "choker"
set /p _ff="Fetish Fashion code: "
echo Hint: Open the developer console and enter: help "reverse"
set /p _rc="Reverse Combat Armor code: "
echo player.additem %_cw%0F9C 1 >> %_character%.txt
echo player.removeitem %_cw%5C0D 999 >> %_character%.txt
set /p _ammoCount="How many rounds of ammunition do you want: "
echo player.additem %_cw%5c0d %_ammoCount% >> %_character%.txt
echo player.equipitem %_cw%0F9C >> %_character%.txt
echo player.unequipitem 0001EED7 >> %_character%.txt
echo player.additem %_ff%C514 1 >> %_character%.txt
echo player.equipitem %_ff%C514 >> %_character%.txt
echo player.additem %_ff%9EFF 1 >> %_character%.txt
echo player.equipitem %_ff%9EFF >> %_character%.txt
echo player.additem %_ff%9F05 1 >> %_character%.txt
echo player.equipitem %_ff%9F05 >> %_character%.txt
echo player.additem %_ff%9EFC 1 >> %_character%.txt
echo player.equipitem %_ff%9EFC >> %_character%.txt
echo player.additem %_rc%0F9C 1 >> %_character%.txt
echo player.equipitem %_rc%0F9C >> %_character%.txt
echo player.additem %_rc%0F9A 1 >> %_character%.txt
echo player.equipitem %_rc%0F9A >> %_character%.txt