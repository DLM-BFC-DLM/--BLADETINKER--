#modloaded dlmbfcdlmmodpackcertification

mods.tconstruct.Melting.removeRecipe//移除熔融钛配方
(
    <liquid:titanium>,
    <galacticraftplanets:item_basic_asteroids>
);
/*mods.tconstruct.Melting.removeRecipe
(
    <liquid:plustic.molten_titanium>,
    <tiths:ore_rutile>
);
mods.tcomplement.Blacklist.addRecipe
(
    <liquid:rutile_molten>,
    <tiths:ore_rutile>
);*/

mods.tconstruct.Melting.addRecipe//添加金红石矿融熔融金红石配方
(
    <liquid:rutile_molten>*288,
    <tiths:ore_rutile>, 
    735
);