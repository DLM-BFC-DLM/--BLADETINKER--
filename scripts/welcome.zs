

events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent)
{
	event.player.sendMessage
    ("
        	
        	
        	
        	
        	
	
欢迎§b§l" ~ event.player.name ~ "§f来到§6《刀匠————刀魂，匠心》§1整合包，
请享受本次游玩！");//空格是为了挤掉之前的信息
    var GStages as string[] = ["advance-metals"];
    var number as int = 0;
    for GStage in GStages
    {
        
        if(event.player.hasGameStage(GStage) == true)
        {
           number += 1; 
        }
    }
    event.player.sendMessage("§b§l" ~ event.player.name ~ "§f在“基础”之外，有§b§l" ~ number ~ "§f个游戏版块已解锁，
具体内容请查看§6[游戏版块CHECKER]§f。");
}
);