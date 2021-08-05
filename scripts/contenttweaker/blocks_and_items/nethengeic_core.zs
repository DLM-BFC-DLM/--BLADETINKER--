#modloaded dlmbfcdlmmodpackcertification
#priority 19213
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var nethengeicCore = VanillaFactory.createItem("nethengeic_core");
nethengeicCore.maxStackSize = 64;
nethengeicCore.creativeTab = <creativetab:misc>;
nethengeicCore.register();