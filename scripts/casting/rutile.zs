#modloaded dlmbfcdlmmodpackcertification

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemCondition;

mods.tconstruct.Casting.addTableRecipe//添加熔融金红石浇注（铸）金红石配方
(
    <contenttweaker:rutile>,//产出物品
    <tconstruct:cast_custom:2>,//所需注（铸）模或物品
    <liquid:titanium>,//所需浇注（铸）液
    144,//所需浇注（铸）液量，144为一锭
    false,//是否消耗注（铸）模或物品
    250//冷却成形（型）时间
);
