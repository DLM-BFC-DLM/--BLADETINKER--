#modloaded dlmbfcdlmmodpackcertification
#priority 19212
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var inkSacCyan = VanillaFactory.createItem("ink_sac_cyan");
inkSacCyan.maxStackSize = 64;
inkSacCyan.creativeTab = <creativetab:misc>;
inkSacCyan.register();