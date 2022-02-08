#modloaded dlmbfcdlmmodpackcertification

import crafttweaker.item.IItemStack;
import crafttweaker.command.ICommandManager;
import crafttweaker.command.ICommandSender;

//分裂
function logOutClean(bnItms as IItemStack[]){
    for bnItm in bnItms{
        var bnItem as IItemStack = bnItm.anyDamage();//适用于不同耐久的物品，如装备
        bnItem.addTooltip("§4Log out之时，便是永别......");
        events.onPlayerLoggedOut(//在玩家离开世界时
            function(event as crafttweaker.event.PlayerLoggedOutEvent){
                val eP = event.player;
                if(eP.world.remote == false){
                    eP.executeCommand("clear @s " + bnItem.definition.id);//服务端
                }
            }
        );
    }
}

function appearance(bnItms as IItemStack[]){//includes "Name, Tip and JEI"
    for bnItm in bnItms{
        var bnItem as IItemStack = bnItm.anyDamage();//适用于不同耐久的物品，如装备
        game.setLocalization(bnItem.name,"§kItHasBeenBanned");
        bnItem.addTooltip("§4TA已经被BAN了!");
        mods.jei.JEI.hide(bnItem);//从JEI中隐藏被BAN物品
    }
}

function asOutput(bnItms as IItemStack[]){
    for bnItm in bnItms{
        var bnItem as IItemStack = bnItm.anyDamage();//适用于不同耐久的物品，如装备
        recipes.remove(bnItem);//删除被BAN物品的工作台配方
        furnace.remove(bnItem);//删除被BAN物品的熔炉配方
    }
}

function asInput(bnItms as IItemStack[]){
    for bnItm in bnItms{
        var bnItem as IItemStack = bnItm.anyDamage();//适用于不同耐久的物品，如装备
        var bnItemAsInRcp = recipes.getRecipesFor(bnItem);
        for bnCRcp in bnItemAsInRcp{//删除被BAN物品参与的工作台配方
            var itemOutput as IItemStack = bnCRcp.output;
            var modID as string = itemOutput.definition.owner;
            var n as string = modID + ":" + bnCRcp.name;
            recipes.removeByRecipeName(n);
        }
        for bnFRcp in furnace.all{//删除被BAN物品参与的熔炉配方
            if(bnFRcp.input has bnItem){
                var itemOutput as IItemStack = bnFRcp.output;
                var itemInput as IItemStack = bnFRcp.input;
                furnace.remove(itemOutput, itemInput);
            }
        }
    }
}

function rCOO(bnItms as IItemStack[]){//means "Right Click Only Once"
    for bnItm in bnItms{
        var bnItem as IItemStack = bnItm.anyDamage();//适用于不同耐久的物品，如装备
        bnItem.addTooltip("§4只能使用一次！");
        events.onPlayerRightClickItem(
            function(event as crafttweaker.event.PlayerRightClickItemEvent){
                val eP = event.player;
                if(eP.currentItem.definition.id == bnItem.definition.id && eP.world.remote == false && isNull(eP.currentItem) == false){
                    eP.sendChat("DLM_BFC_DLM: “§4试吃§f”结束咯！你不能再使用这个物品了。" + eP.name + "！我要删除它！如果你不介意的话，再吃道§e闪电§f吧！");
                    eP.executeCommand("gamerule sendCommandFeedback false");
                    eP.executeCommand("summon minecraft:lightning_bolt");
                    eP.executeCommand("gamerule sendCommandFeedback true");
                    eP.executeCommand("clear @s " + bnItem.definition.id);
                }
            }
        );
    }
}
/////////////////////////////////////////////////////////一BAN，BAN一堆//////////////////////////////////////////////////////////////////////
/*function banner(bnItems as IItemStack[]){
    for bnItm in bnItems{
        var bnItem as IItemStack = bnItm.anyDamage();//适用于不同耐久的物品，如装备
        events.onPlayerLoggedIn(//在玩家登陆时
            function(event as crafttweaker.event.PlayerLoggedInEvent){
                SCS.executeCommand(event.player,"/clear @s " + bnItem.definition.id);//服务端
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
}*/