#modloaded dlmbfcdlmmodpackcertification
import crafttweaker.item.IItemStack;
import crafttweaker.command.ICommand;
//import crafttweaker.recipes.IFurnaceRecipe;


function banner(bnItems as IItemStack[]){
    for bnItm in bnItems{
        var bnItem as IItemStack = bnItm.anyDamage();//适用于不同耐久的物品，如装备
        events.onPlayerLoggedIn(//在玩家登陆时
            function(event as crafttweaker.event.PlayerLoggedInEvent){
                server.commandManager.executeCommand(event.player,"/clear @s " + bnItem.definition.id);//服务端
            }
        );
        game.setLocalization(bnItem.name,"§kItHasBeenBanned");
        bnItem.addTooltip("§4TA已经被BAN了!");
        recipes.remove(bnItem);//删除被BAN物品的工作台配方
        var bnItemAsInRcp = recipes.getRecipesFor(bnItem);
        for bnCRcp in bnItemAsInRcp{//删除被BAN物品参与的工作台配方
            var itemOutput as IItemStack = bnCRcp.output;
            var modID as string = itemOutput.definition.owner;
            var n as string = modID + ":" + bnCRcp.name;
            recipes.removeByRecipeName(n);
            //print(n);
        }
        furnace.remove(bnItem);//删除被BAN物品的熔炉配方
        for bnFRcp in furnace.all{//删除被BAN物品参与的熔炉配方
            if(bnFRcp.input has bnItem){
                var itemOutput as IItemStack = bnFRcp.output;
                var itemInput as IItemStack = bnFRcp.input;
                furnace.remove(itemOutput, itemInput);
            }
        }
        mods.jei.JEI.hide(bnItem);//从JEI中隐藏被BAN物品
    }
}