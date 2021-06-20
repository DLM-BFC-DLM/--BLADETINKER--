#modloaded dlmbfcdlmmodpackcertification
#priority 19211
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var inactiveAmphibiyteSpawner = VanillaFactory.createBlock("inactive_amphibiyte_spawner", <blockmaterial:iron>);
inactiveAmphibiyteSpawner.fullBlock = true;
inactiveAmphibiyteSpawner.lightOpacity = 225;
inactiveAmphibiyteSpawner.translucent = true;
inactiveAmphibiyteSpawner.lightValue = 0.0;
inactiveAmphibiyteSpawner.blockHardness = 10.0;
inactiveAmphibiyteSpawner.blockResistance = 10.0;
inactiveAmphibiyteSpawner.toolClass = "shears";
inactiveAmphibiyteSpawner.toolLevel = 0;
inactiveAmphibiyteSpawner.blockSoundType = <soundtype:metal>;
inactiveAmphibiyteSpawner.creativeTab = <creativetab:decorations>;
inactiveAmphibiyteSpawner.register();