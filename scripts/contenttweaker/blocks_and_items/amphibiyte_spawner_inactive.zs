#modloaded dlmbfcdlmmodpackcertification
#priority 19211
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var amphibiyteSpawnerInactive = VanillaFactory.createBlock("amphibiyte_spawner_inactive", <blockmaterial:iron>);
amphibiyteSpawnerInactive.fullBlock = true;
amphibiyteSpawnerInactive.lightOpacity = 225;
amphibiyteSpawnerInactive.translucent = true;
amphibiyteSpawnerInactive.lightValue = 0.0;
amphibiyteSpawnerInactive.blockHardness = 10.0;
amphibiyteSpawnerInactive.blockResistance = 10.0;
amphibiyteSpawnerInactive.toolClass = "shears";
amphibiyteSpawnerInactive.toolLevel = 0;
amphibiyteSpawnerInactive.blockSoundType = <soundtype:metal>;
amphibiyteSpawnerInactive.creativeTab = <creativetab:decorations>;
amphibiyteSpawnerInactive.register();