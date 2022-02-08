#modloaded dlmbfcdlmmodpackcertification

import mods.zenutils.DelayManager;

events.onPlayerLoggedIn(
    function(event as crafttweaker.event.PlayerLoggedInEvent){
        val eP = event.player;
        if(eP.world.remote == false){
            DelayManager.addDelayWork(
                function(){
                    eP.sendMessage("\n\n\n\n\n\n欢迎§b§l" + eP.name + "§f来到§6《刀匠————刀魂，匠心》§1整合包，\n请享受本次游玩！");//"\n"是为了换行，挤掉前面的信息。不要直接按return键！
                    var GStages as string[] = ["advance-metals"];
                    var number as int = 0;
                    for GStage in GStages{
                        if(eP.hasGameStage(GStage) == true){
                            number += 1;
                        }
                    }
                    eP.sendMessage("§b§l" + eP.name + "§f在“基础”之外，有§b§l" + number + "§f个游戏版块已解锁，\n具体内容请查看§6[游戏版块CHECKER]§f。");
                }, 1*20
            );
        }
    }
);