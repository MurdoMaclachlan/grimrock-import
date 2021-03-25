## OVERVIEW & FEATURES

This mod imports the Skeleton Warrior enemy from the first Legend of Grimrock game. Many of the enemy's assets were included in Legend of Grimrock 2, but the monster itself was not implemented. This mod allows you to use the enemy when creating custom dungeons.

**This mod adds:**
- The Skeleton Warrior enemy
- The Skeleton Patrol, featuring 4 Skeleton Warriors
- The Skeleton Warrior's shield (called "legionary_shield")
- An enemy called "skeleton_warrior_pair", which is a pair of skeleton warriors; it was not in the first game, but I thought I would add it anyway to allow for more variation

Items such as the Skeleton Warrior's spear (called "legionary_spear") are already in Grimrock 2.

There is also an optional add-on available which adds versions of the skeleton warriors that are weak to shock, as is in-keeping with most undead enemies in Grimrock 2.

## INSTALLATION

1. Once you have downloaded the .zip archive, extract it into any folder.
2. If you extracted it somewhere else, copy the entire "import_skeletonWarrior" folder into the "mod_assets" folder for the dungeon you want to use this mod in.
3. Go into your "mod_assets/scripts" folder and load "init.lua".
4. Add the following line of code to the end of the file:

    `import "mod_assets/import_skeletonWarrior/init.lua"`

5. The next time you load your dungeon in the editor, you should see "skeleton_warrior", "skeleton_warrior_pair" and "skeleton_warrior_patrol" under the enemies tab, and "legionary_shield" under the items tab.

*Note: if you have your dungeon loaded while you add the files, you may need to reload the dungeon for the enemies and item to appear.*
