#modloaded dlmbfcdlmmodpackcertification
#priority 19214
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var inactiveNethengeicBeastSpawner = VanillaFactory.createBlock("inactive_nethengeic_beast_spawner", <blockmaterial:iron>);
inactiveNethengeicBeastSpawner.fullBlock = true;
inactiveNethengeicBeastSpawner.lightOpacity = 205;
inactiveNethengeicBeastSpawner.translucent = true;
inactiveNethengeicBeastSpawner.lightValue = 0.0;
inactiveNethengeicBeastSpawner.blockHardness = 10.0;
inactiveNethengeicBeastSpawner.blockResistance = 10.0;
inactiveNethengeicBeastSpawner.toolClass = "shears";
inactiveNethengeicBeastSpawner.toolLevel = 0;
inactiveNethengeicBeastSpawner.blockSoundType = <soundtype:metal>;
inactiveNethengeicBeastSpawner.creativeTab = <creativetab:decorations>;
inactiveNethengeicBeastSpawner.register();