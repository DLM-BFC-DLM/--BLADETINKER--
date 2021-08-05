#modloaded dlmbfcdlmmodpackcertification
#priority 19214
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var nethengeicBeastSpawnerInactive = VanillaFactory.createBlock("nethengeic_beast_spawner_inactive", <blockmaterial:iron>);
nethengeicBeastSpawnerInactive.fullBlock = true;
nethengeicBeastSpawnerInactive.lightOpacity = 205;
nethengeicBeastSpawnerInactive.translucent = true;
nethengeicBeastSpawnerInactive.lightValue = 0.0;
nethengeicBeastSpawnerInactive.blockHardness = 10.0;
nethengeicBeastSpawnerInactive.blockResistance = 10.0;
nethengeicBeastSpawnerInactive.toolClass = "shears";
nethengeicBeastSpawnerInactive.toolLevel = 0;
nethengeicBeastSpawnerInactive.blockSoundType = <soundtype:metal>;
nethengeicBeastSpawnerInactive.creativeTab = <creativetab:decorations>;
nethengeicBeastSpawnerInactive.register();