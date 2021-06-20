#modloaded dlmbfcdlmmodpackcertification
#priority 19216
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var riceHybrid = VanillaFactory.createItem("rice_hybrid");
riceHybrid.maxStackSize = 128;
riceHybrid.creativeTab = <creativetab:misc>;
riceHybrid.rarity = "EPIC";
riceHybrid.register();