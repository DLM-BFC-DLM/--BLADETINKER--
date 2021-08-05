
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
//import crafttweaker.recipes.ICraftingRecipe;

<ore:banned>.add(<minecraft:iron_leggings>);
for bannedItem in <ore:banned>.items
{
    game.setLocalization(bannedItem.name,"§kItHasBeenBanned");
    bannedItem.addTooltip("§4TA已经被BAN了!");
    recipes.remove(bannedItem);//删除被BAN物品的配方
    var e = recipes.getRecipesFor(<minecraft:apple>);
    for f in e.name
    {
        print(f);
    }
    /*for recipe in recipes.all//遍历游戏内所有注册配方      //删除被BAN物品参与的配方
    {
        if (recipe.ingredients1D has <minecraft:apple>)//用ICraftingRecipe的ingredients1D ZenGetter获取配方的材料，返回IIngredient[]
        {
            var itemOutput as IItemStack = recipe.output;
            var modID as string = itemOutput.definition.owner;
            var e as string = modID + ":" + recipe.name;
            recipes.removeByRecipeName(e);
            print(e);
        }
    }*/
    mods.jei.JEI.hide(bannedItem);
}