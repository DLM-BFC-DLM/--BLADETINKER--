#modloaded dlmbfcdlmmodpackcertification
#priority 19219
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var gamestagechecker = VanillaFactory.createItem("gamestagechecker");
gamestagechecker.maxStackSize = 1;
gamestagechecker.creativeTab = <creativetab:misc>;
gamestagechecker.register();