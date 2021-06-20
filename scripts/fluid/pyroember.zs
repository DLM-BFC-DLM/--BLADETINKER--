#modloaded dlmbfcdlmmodpackcertification
#priority 19215
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;

var pyroember = VanillaFactory.createFluid("pyroember", Color.fromHex("FFA000"));
pyroember.luminosity = 10;
pyroember.temperature = 1500;
pyroember.rarity = "EPIC";
pyroember.stillLocation = "dlmbfcdlmmodpackcertification:fluids/pyroember";
pyroember.flowingLocation = "dlmbfcdlmmodpackcertification:fluids/pyroember_flow";
pyroember.material = <blockmaterial:lava>;
pyroember.register();