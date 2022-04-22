### Translations
* [English](https://github.com/Stoupy51/Energy-Datapack-Template/blob/master/README.md)
* [Française](https://github.com/Stoupy51/Energy-Datapack-Template/blob/master/README.fr.md)



# ⚡ Crazy Adventure
- [Join our Energy Data Packs discord server here: https://discord.gg/a2yX6GD4J7](https://discord.gg/a2yX6GD4J7)
- Requires at least SimplEnergy [v1.8.0]: https://github.com/Stoupy51/SimplEnergy



# 📖 Description
- This data pack is a template based on SimplEnergy's design.
- [Stardust Fragment](https://www.planetminecraft.com/data-pack/stardust-fragment/) data pack is using this template, it is an extension of SimplEnergy.
- This template is fully commented and can be used as a starting point for creating your own energy data pack.
- It requires SimplEnergy [v1.8.0] or higher to take advantage of the already created and configured systems listed below.



# 📚 Librairies/Modules used, conventions, guideline, tips followed
- [Smithed Custom Block Placement](https://wiki.smithed.dev/libraries/smithed-crafter)
- [Smithed Crafter](https://wiki.smithed.dev/libraries/smithed-crafter)
- [DatapackEnergy](https://github.com/ICY105/DatapackEnergy)
- [Lantern Load](https://github.com/LanternMC/load)
- [Smithed Conventions](https://wiki.smithed.dev/conventions)
- [Minecraft Datapacks Conventions](https://mc-datapacks.github.io/en/conventions/index.html)
- [Minecraft Datapacks Style Guideline](https://mc-datapacks.github.io/en/style_guideline/index.html)
- [Minecraft Datapacks Tips](https://mc-datapacks.github.io/en/tips/index.html)



# 🔧 What is already configured
- **Lantern Load (load & post_load)**		base located in `load/tags/functions/*`
- **Smithed Crafting Recipes**				located in `crazy_adventure/functions/craft/`
- **Smithed Custom Block Placement**		located in `crazy_adventure/place/functions/main`
- **SimplEnergy Custom Armor Durability**	located in `crazy_adventure/functions/opti/durability_multiplier`
- **SimplEnergy Custom Furnace Recipes**	located in `crazy_adventure/functions/all_furnace_recipes`
- **SimplEnergy Energy Charge Lore**		located in `crazy_adventure/functions/destroy/*batteries*`
- **SimplEnergy Ore Generation**			located in `crazy_adventure/functions/generate/main`
- Basic stuffs (First join advancement, destroy & placement functions, visual & work functions for machines, ...)
- A generator, an energy consumer, a battery
- 1 tick, 2 ticks, 1 second, and 1 minute clocks



# ▶️ How to use
- Download the package from the source code or from the release page.

- Change the name of the data pack by using 'Find and Replace' with your favorite IDE (**Enable case sensitive**):
- - Find: `crazy_adventure` and replace with your data pack own name
- - (e.g. `simplenergy`, `my_energy_datapack`, ...)
- - Find: `Crazy Adventure` and replace with your data pack own name
- - (e.g. `SimplEnergy`, `My Energy Datapack`, ...)
- - Modify line 12 in `crazy_adventure/functions/load.mcfunction` with your own data pack name

- Modify content of `pack.mcmeta` with your own data pack name

- Rename the `crazy_adventure/` folder located in `data/` with your own data pack name
- Rename the `crazy_adventure/` folder located in `resource pack/` with your own data pack name

- Define your data pack versioning advancement using [global convention](https://mc-datapacks.github.io/en/conventions/datapack_advancement.html), files are located in
- - `crazy_adventure/advancements/crazy_adventure.json`
- - `global/advancements/your_username.json`

- Use 'Find and Replace' with your favorite IDE:
- - Find: `vgreluchon` and replace with your own name (e.g. `stoupy`, `uwu42`, ...), for the `from` nbt field regarding to the [Common Trait Convention](https://mc-datapacks.github.io/en/conventions/common_trait.html)
- - Find: `422` and replace with your **owned** [CustomModelData prefix](https://wiki.smithed.dev/conventions/cmd-prefixing) (e.g. `422 -> 201`, `422 -> 067`, ...)

- And you are done!
You can now add your items, blocks, machines. You can also use/edit the `resource pack` folder

