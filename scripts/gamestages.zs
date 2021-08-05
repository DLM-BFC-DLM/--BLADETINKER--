#modloaded dlmbfcdlmmodpackcertification

import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemDefinition;

mods.TinkerStages.addMaterialStage("advance-metals", "titanium");

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent)
{
    //var player = game.getEntity("player");
    print(event.player.name);
    print(event.player.currentItem.definition.id);
    if(event.player.currentItem.definition.id == "contenttweaker:rutile" && event.player.hasGameStage("advance-metals") == false)
    {
        event.player.addGameStage("advance-metals");
        event.player.sendMessage(event.player.name ~ "获得了游戏版块：§b[进阶金属 §lThe ADVANCE-METALs]§f！");
    }
}
);