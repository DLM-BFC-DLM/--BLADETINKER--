#modloaded dlmbfcdlmmodpackcertification
#loader contenttweaker

import scripts.contenttweaker.item_creator.itemCreator;
import scripts.contenttweaker.item_creator.foodCreator;

/*
foodCreator(
    priority as int, ID as string, isAlwaysEdible as bool, beaconPayable as bool, creativeTab as CreativeTab,
    isGlowing as bool, healAmount as int, maxDamage as int, maxStackSize as int,
    potions as IPotion[], potDuration as int[], potAmplifier as int[],
    rarity as string, saturation as float, toolClass as string, toolLevel as int,
    isWolfFood as bool
);
itemCreator(
    priority as int, ID as string, beaconPayable as bool, creativeTab as CreativeTab, isGlowing as bool,
    maxDamage as int, maxStackSize as int, rarity as string, toolClass as string, toolLevel as int
);
*/

foodCreator(19216, "rice_hybrid", false, false, <creativetab:food>, false, 20, -1, 128, [<potion:minecraft:saturation>], [60], [10], "EPIC", 20, null, -1, false);

itemCreator(19213, "core_nethengeic", false, <creativetab:misc>, false, -1, 64, "COMMON", null, -1);
itemCreator(19219, "gamestage_checker", false, <creativetab:misc>, false, -1, 1, "COMMON", null, -1);
itemCreator(19212, "ink_sac_cyan", false, <creativetab:misc>, false, -1, 64, "COMMON", null, -1);
itemCreator(19218, "rutile", false, <creativetab:misc>, false, -1, 64, "COMMON", null, -1);