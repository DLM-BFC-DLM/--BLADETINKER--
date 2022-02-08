#modloaded dlmbfcdlmmodpackcertification
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.CreativeTab;
import crafttweaker.potions.IPotion;

function itemCreator(
    priority as int,
    ID as string,
    beaconPayable as bool,//是否可以丢进信标里
    creativeTab as CreativeTab,
    isGlowing as bool,//是否有附魔光芒
    maxDamage as int,//设置物品耐久，小于0则为普通物品，大于0将会被当作工具
    maxStackSize as int,//设置物品最大堆叠数
    rarity as string,//影响物品显示名称的颜色，可用“COMMON”, “UNCOMMON”, “RARE”, “EPIC”中一个，设置物品稀有度
    toolClass as string,//设置这是什么工具（pickaxe镐 axe斧等等）貌似sword剑不能
    toolLevel as int//设置工具挖掘等级，默认为-1
){
    #priority priority

    var cCI/*means "contenttweaker-created item"*/ as Item = VanillaFactory.createItem(ID);
    cCI.beaconPayment = beaconPayable;
    cCI.creativeTab = creativeTab;
    cCI.glowing = isGlowing;
    cCI.maxDamage = maxDamage;
    cCI.maxStackSize = maxStackSize;
    cCI.rarity = rarity;
    cCI.toolClass = toolClass;
    cCI.toolLevel = toolLevel;
    cCI.register();
}

function foodCreator(
    priority as int,
    ID as string,
    isAlwaysEdible as bool,//该食物在玩家饥饿值满时是否还可以吃
    beaconPayable as bool,//是否可以丢进信标里
    creativeTab as CreativeTab,
    isGlowing as bool,//是否有附魔光芒
    healAmount as int,//该食物可恢复的饥饿值
    maxDamage as int,//设置物品耐久，小于0则为普通物品，大于0将会被当作工具
    maxStackSize as int,//设置物品最大堆叠数
    potions as IPotion[],
    potDuration as int[],//药效持续时间
    potAmplifier as int[],//药水等级
    rarity as string,//影响物品显示名称的颜色，可用“COMMON”, “UNCOMMON”, “RARE”, “EPIC”中一个，设置物品稀有度
    saturation as float,//该食物的相对饱和度，实际饱和度为相对饱和度*饥饿值
    toolClass as string,//设置这是什么工具（pickaxe镐 axe斧等等）貌似sword剑不能
    toolLevel as int,//设置工具挖掘等级，默认为-1
    isWolfFood as bool//该食物是否可喂给狼
){
    #priority priority

    var cCF/*means "contenttweaker-created food"*/ as ItemFood = VanillaFactory.createItemFood(ID, healAmount);
    cCF.alwaysEdible = isAlwaysEdible;
    cCF.beaconPayment = beaconPayable;
    cCF.creativeTab = creativeTab;
    cCF.glowing = isGlowing;
    cCF.maxDamage = maxDamage;
    cCF.maxStackSize = maxStackSize;
    cCF.onItemFoodEaten = function(stack, world, player){
        if(world.remote == false){
            for i, pot in potions{
                var potD = potDuration[i];
                var potA = potAmplifier[i];
                player.addPotionEffect(pot.makePotionEffect(potD, potA));
            }
        }
    };
    cCF.rarity = rarity;
    cCF.saturation = saturation;
    cCF.toolClass = toolClass;
    cCF.toolLevel = toolLevel;
    cCF.wolfFood = isWolfFood;
    cCF.register();
}