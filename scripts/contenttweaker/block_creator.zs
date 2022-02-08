#modloaded dlmbfcdlmmodpackcertification
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.BlockMaterial;

function blockCreator(//定义函数&&声明函数所需参数
    priority as int,//in fact, it isn't necessary
    ID as string,//字符串方块ID
    isBeaconBased as bool,//是否可作为信标基座
    blockHardness as float,//方块硬度
    blockLayer as string,//不想透视就用“SOLID”。可用"SOLID", "CUTOUT_MIPPED", "CUTOUT", "TRANSLUCENT"之一。渲染类似冰的半透明请用 TRANSLUCENT，类似玻璃的请用 CUTOUT_MIPPED 或 CUTOUT
    blockMaterial as BlockMaterial,//方块材料
    blockResistance as float,//方块防爆等级
    blockSoundType as SoundType,//设置方块声音，方块放置、破坏时的声音，记得/ct soundtype指令
    creativeTab as CreativeTab,//设置物品所在创造标签，记得/ct creativetab指令
    isEntitySpawnable as bool,//生物是否可以在这个方块上生成
    enumBlockRenderType as string,//可用"INVISIBLE", "LIQUID", "ENTITYBLOCK_ANIMATED", "MODEL"之一，用于设定这个方块如何渲染
    isFullBlock as bool,//是否为完整方块，用于渲染和光照计算
    isGravitated as bool,//是否受重力影响
    lightValue as int,//设置方块光照等级，最大为15
    isPassable as bool,//玩家是否可通过这个方块
    isReplaceable as bool,//玩家是否可直接替换这个方块，比如原版的草
    slipperiness as float,//设置方块滑度，冰为0.98，一般方块为0.6
    toolClass as string,//设置方块需要什么工具挖掘
    toolLevel as int,//设置方块需要多少挖掘等级
    isWitherProofed as bool//方块是否可抵御凋灵爆炸
)/*此函数无返回值*/{//函数主体代码内容
    #priority priority

    var cCB/*means "contenttweaker-created block"*/ as Block = VanillaFactory.createBlock(ID, blockMaterial);
    cCB.beaconBase = isBeaconBased;
    cCB.blockHardness = blockHardness;
    cCB.blockLayer = blockLayer;
    cCB.blockSoundType = blockSoundType;
    cCB.creativeTab = creativeTab;
    cCB.entitySpawnable = isEntitySpawnable;
    cCB.enumBlockRenderType = enumBlockRenderType;
    cCB.fullBlock = isFullBlock;
    cCB.gravity = isGravitated;
    cCB.lightValue = lightValue;
    cCB.passable = isPassable;
    cCB.replaceable = isReplaceable;
    cCB.slipperiness = slipperiness;
    cCB.toolClass = toolClass;
    cCB.toolLevel = toolLevel;
    cCB.witherProof = isWitherProofed;
    cCB.register();
}//函数结束