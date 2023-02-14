# Batch Files

## Contributing

If you have a batch file you'd like to share, create it in this folder then create a section describing it `here`.

## Creating Branches for RP Config

Clone the main branch: `git clone -b main`

Create a new branch for your customized version of the script following the naming convention of your character's name ie: `git checkout -b Mars`

I suggest creating two branches, one for the final version of the script and one for the work in progress version. ie: `git checkout -b Mars` and `git checkout -b Mars-WIP` respectively. Fix your bugs and make your changes in the WIP branch. Once you are satisfied with the results, merge the WIP branch into the final branch.

## Documentation

### rpconfig.bat aka Minerva's RP Assistant

The purpose of this batch file is to create a text file to be interpreted by the engine in Fallout 4

The end result will be a .txt file with contents similar to the following:

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
