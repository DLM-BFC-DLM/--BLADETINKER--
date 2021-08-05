#modloaded dlmbfcdlmmodpackcertification
#priority 19218
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var rutile = VanillaFactory.createItem("rutile");
rutile.maxStackSize = 64;
rutile.creativeTab = <creativetab:misc>;
rutile.register();