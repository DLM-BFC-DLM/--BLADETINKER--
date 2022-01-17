#modloaded dlmbfcdlmmodpackcertification
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;

function fluidCreator//定义函数
(//声明函数所需参数
    priority as int,//in fact, it isn't necessary
    ID as string,//字符串流体ID,该流体的贴图的路径（stillLocation与flowingLocation）受此项影响
    color as string,
    isColorized as bool,//实际材质是否受颜色参数影响
    density as int,//密度，决定实体在其游泳速度，水为1000，熔岩为3000
    isGaseous as bool,//流体是否反重力流动
    luminosity as int,//流体亮度
    material as BlockMaterial,//流体材料，建议类似水的设置为<blockmaterial:water>，类似熔岩设置为<blockmaterial:lava>
    rarity as string,
    temperature as int,//流体温度，水为300，熔岩为1300
    isVaporizable as bool,//流体在下界是否会蒸发
    viscosity as int//流体黏度，决定流体流动速度，水为1000，熔岩为3000
)//此函数无返回值
{//函数主体代码内容
#priority priority

var fAN/*means "fluid and name"*/ = VanillaFactory.createFluid(ID, Color.fromHex(color));
<<<<<<< HEAD
fAN.colorize = isColorized;
fAN.density = density;
fAN.gaseous = isGaseous;
fAN.luminosity = luminosity;
fAN.material = material;
fAN.rarity = rarity;
fAN.stillLocation = "dlmbfcdlmmodpackcertification:fluids/" ~ ID ~ "_still";//材质加载位置受限
fAN.flowingLocation = "dlmbfcdlmmodpackcertification:fluids/" ~ ID ~ "_flow";
fAN.temperature = temperature;
fAN.vaporize = isVaporizable;
fAN.viscosity = viscosity;
fAN.register();
}//函数结束