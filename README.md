# Minerva's RP Assistant

The purpose of this batch file is to create a text file to be interpreted by the xEdit engine in Fallout 4
the end result will be a .txt file with contents similar to the following:

```text
    player.removeitem 0001F276 100
    player.removeitem 00004822 1
    player.additem 5E000f9c 1
    player.removeitem 5E005c0d 999
    player.additem 5E005c0d 666
    player.equipitem 5E000f9c
    player.unequipitem 0001eed7
    player.additem 7103c514 1
    player.equipitem 7103c514
    player.additem 71039eff 1
    player.equipitem 71039eff
    player.additem 71039f05 1
    player.equipitem 71039f05
    player.additem 71039efc 1
    player.equipitem 71039efc
    player.additem fe020f9c 1
    player.equipitem fe020f9c
    player.additem fe020f9a 1
    player.equipitem fe020f9a
    player.setav strength 3
    player.setav perception 4
    player.setav endurance 3
    player.setav charisma 7
    player.setav intelligence 5
    player.setav agility 3
    player.setav luck 5
    player.addperk 00019aa3
    player.addperk 0001e67f
    player.addperk 001d248a
```

## Follow the following instructions when writing the batch file

- Prompt for the filename in case you want multiple bat files in order to effectively have different presets
- Prompt for location IDs of the required mods
  - DX Fetish Fashion
  - Reverse Combat Armor
  - Combined Arms
- Prompt for RP stats
- Prompt for RP perks
- Prompt for ammo count
