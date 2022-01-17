#modloaded dlmbfcdlmmodpackcertification

import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemDefinition;
import mods.TinkerStages.addMaterialStage;

////////////////////////////////////////////////////////前置函数区/////////////////////////////////////////////////////////////////////////////////////////////

function gSUnlock(
    sName as string,//游戏阶段名称
    unlockerID as string,//解锁游戏阶段的物品的ID
    description as string//【】内游戏阶段介绍
){
    events.onPlayerRightClickItem(
        function(event as crafttweaker.event.PlayerRightClickItemEvent){
            if(event.player.currentItem.definition.id == unlockerID && !event.player.hasGameStage(sName) && !event.player.world.remote){
                event.player.addGameStage(sName);
                event.player.sendMessage("\n\n\n\n" + event.player.name + "解锁了游戏版块：§b[" + description + "]§f！");
            }
        }
    );
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////主代码区/////////////////////////////////////////////////////////////////////////////////////////////

addMaterialStage("advance-metals", "titanium");

gSUnlock("advance-metals" ,"contenttweaker:rutile", "进阶金属 §lThe ADVANCE-METALs");

//////////////////////////////////////////////////////GSChecker代码区///////////////////////////////////////////////////////////////////////////////////////////////

var stageNames as string[] = ["advance-metals"];//此处放在events内外无所谓，调用只能向内
var stageDescriptions as string[] = ["[进阶金属 §lThe ADVANCE-METALs]"];//此处放在events内外无所谓，调用只能向内
events.onPlayerRightClickItem(
    function(event as crafttweaker.event.PlayerRightClickItemEvent){//一种形式的检测，代码和外观都很简洁
        if(event.player.currentItem.definition.id == "contenttweaker:gamestagechecker" && !event.player.world.remote){//判断是否为GSChecker
            event.player.sendMessage("\n\n\n游戏版块：");
            var trueStages as string[] = [];//定义数组
            var falseStages as string[] = [];
            for i, stageName in stageNames{//foreach循环，遍历数组，i为一个变量，表示循环了几次（程序员数数是从0开始数的，第一次循环i=0，第二次为1....）
                if(event.player.hasGameStage(stageName)){//player拥有某GameStage
                    event.player.sendMessage("§2" + stageDescriptions[i] + " - §f§2已解锁");
                    trueStages += stageName;
                }
                else{//player未拥有某GameStage
                    event.player.sendMessage("§4" + stageDescriptions[i] + " - §f§4未解锁");
                    falseStages += stageName;
                }
            }
            event.player.sendMessage("共有" + stageNames.length + "个游戏版块，已解锁§2" + trueStages.length + "§f个，未解锁§4" + falseStages.length + "§f个。");
        }
    }
);


//////////////另一种形式的检测，本想删掉，但写出来太费劲，就留做纪念;3//////////////////////////////////////////////////////////////////////
    /*
    var number as int = 0;
    var trueStages as string[] = [];//定义数组
    var falseStages as string[] = [];
    for i, stageName in stageNames//foreach循环，遍历数组，i为一个变量，表示循环了几次（程序员数数是从0开始数的，第一次循环i=0，第二次为1....）
    {
        if(event.player.hasGameStage(stageName))//player拥有某GameStage
        {
            trueStages += stageDescriptions[i];//将i对应的一项加入数组
        }
        else//player未拥有某GameStage
        {
            falseStages += stageDescriptions[i];//将i对应的一项加入数组
        }
    }
    if(event.player.currentItem.definition.id == "contenttweaker:gamestagechecker")//判断是否为GSChecker
    {
        event.player.sendMessage("\n\n\n" + event.player.name + "已解锁的游戏版块：");
        if(trueStages.length != 0)//判断数组是否不为空
        {
            for trueStage in trueStages//遍历数组内容，以trueStage变量存储每一项内容
            {
                event.player.sendMessage("§2" + trueStage);
            }
        }
        else//数组为空
        {
            event.player.sendMessage("§2无");
        }
        event.player.sendMessage(event.player.name + "未解锁的游戏版块：");
        if(falseStages.length != 0)//判断数组是否不为空
        {
            for falseStage in falseStages//遍历数组内容，以falseStage变量存储每一项内容
            {
                event.player.sendMessage("§4" + falseStage);
            }   
        }
        else//数组为空
        {
            event.player.sendMessage("§4无");
        }
        event.player.sendMessage("

");*/