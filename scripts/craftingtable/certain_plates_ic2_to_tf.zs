

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemDefinition;
import mods.ic2.BlockCutter;

for platesOD in oreDict.entries{
    var odName as string = platesOD.name;
    // 进行条件判断
    if(odName.startsWith("plate") && !odName.startsWith("plateDense") && !odName.endsWith("advancedAlloy")){ //第三个条件是为了排除高级合金两个矿辞中的一个（<ore:plateadvancedAlloy>）
        var ic2ExactPlate as IItemStack = <minecraft:glass_pane>;
        var tfExactPlate as IItemStack = <minecraft:stained_glass_pane>;
        for plates in platesOD.items{
            if(plates.definition.owner == "ic2"){
                <ore:ic2Plates>.add(plates);//加入特定OD
                ic2ExactPlate = plates;
            }
            else if(plates.definition.owner == "thermalfoundation"){
                <ore:tfPlates>.add(plates);//加入特定OD
                tfExactPlate = plates;
            }
        }
        if(platesOD has ic2ExactPlate && platesOD has tfExactPlate){//比较两个特定OD是否都拥有同一物品
            platesOD.remove(ic2ExactPlate);//从原本OD将特定板移除
            <ore:banned>.add(ic2ExactPlate);//将特定板加入用于ban的矿物辞典
            var keyMetalName as string = odName.substring("plate".length);//获取特定金属名
            var ingot as IOreDictEntry = oreDict.get("ingot" ~ keyMetalName);//获取特定金属锭
            recipes.addShapeless(//添加工作台合成表
                tfExactPlate,
                [ingot,<ic2:forge_hammer>]
            );
            BlockCutter.addRecipe(//添加方块切割机合成表
                tfExactPlate,
                ingot,
                6
            );
        }
        else{//将不符合条件的板从新加入的OD中移除
            <ore:ic2Plates>.remove(ic2ExactPlate);
            <ore:tfPlates>.remove(tfExactPlate);
        }
    }
}
