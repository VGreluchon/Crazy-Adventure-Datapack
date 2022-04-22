### Translations
* [English](https://github.com/Stoupy51/Energy-Datapack-Template/blob/master/README.md)
* [Française](https://github.com/Stoupy51/Energy-Datapack-Template/blob/master/README.fr.md)



# ⚡ Crazy Adventure
- [Rejoignez notre serveur discord Energy Data Packs ici : https://discord.gg/a2yX6GD4J7](https://discord.gg/a2yX6GD4J7)
- Nécessite au moins SimplEnergy [v1.8.0]: https://github.com/Stoupy51/SimplEnergy



# 📖 Description
- Ce data pack est un modèle basé sur le design de SimplEnergy.
- Le data pack [Stardust Fragment](https://www.planetminecraft.com/data-pack/stardust-fragment/) utilise ce modèle, il s'agit donc d'une extension de SimplEnergy.
- Ce modèle est entièrement commenté et peut être utilisé comme point de départ pour créer votre propre datapack d'énergie.
- Il nécessite SimplEnergy [v1.8.0] ou une version plus récente pour bénéficier des systèmes déjà créés et configurés listés juste en dessous.



# 📚 Librairies/Modules utilisés, conventions, guideline, tips suivis
- [Smithed Custom Block Placement](https://wiki.smithed.dev/libraries/smithed-crafter)
- [Smithed Crafter](https://wiki.smithed.dev/libraries/smithed-crafter)
- [DatapackEnergy](https://github.com/ICY105/DatapackEnergy)
- [Lantern Load](https://github.com/LanternMC/load)
- [Smithed Conventions](https://wiki.smithed.dev/conventions)
- [Minecraft Datapacks Conventions](https://mc-datapacks.github.io/en/conventions/index.html)
- [Minecraft Datapacks Style Guideline](https://mc-datapacks.github.io/en/style_guideline/index.html)
- [Minecraft Datapacks Tips](https://mc-datapacks.github.io/en/tips/index.html)



# 🔧 Ce qui est déjà configuré
- **Lantern Load (load & post_load)**		base situé dans `load/tags/functions/*`
- **Smithed Crafting Recipes**				situé dans `crazy_adventure/functions/craft/`
- **Smithed Custom Block Placement**		situé dans `crazy_adventure/place/functions/main`
- **SimplEnergy Custom Armor Durability**	situé dans `crazy_adventure/functions/opti/durability_multiplier`
- **SimplEnergy Custom Furnace Recipes**	situé dans `crazy_adventure/functions/all_furnace_recipes`
- **SimplEnergy Energy Charge Lore**		situé dans `crazy_adventure/functions/destroy/*batteries*`
- **SimplEnergy Ore Generation**			situé dans `crazy_adventure/functions/generate/main`
- Systèmes de base (First join advancement, destroy & placement functions, visual & work functions for machines, ...)
- Un générateur, un consommateur d'énergie, une batterie
- Boucles s'actualisant tou(te)s les ticks, 2 ticks, secondes, et minutes



# ▶️ Comment l'utiliser
- Téléchargez l'ensemble à partir du code source ou de la release page.

- Modifiez le nom du data pack en utilisant 'Rechercher et Remplacer' avec votre IDE préféré (**Activer 'respecter la casse'**)
- - Recherchez : `crazy_adventure` et remplacez par le nom de votre data pack.
- - (e.g. `simplenergy`, `my_energy_datapack`, ...)
- - Recherchez : `Crazy Adventure` et remplacez par le nom de votre data pack.
- - (e.g. `SimplEnergy`, `My Energy Datapack`, ...)
- - Modifiez la ligne 12 dans `crazy_adventure/functions/load.mcfunction` avec le nom de votre data pack.

- Modifiez le contenu de `pack.mcmeta` avec le nom de votre data pack.

- Renommer le dossier `crazy_adventure/` situé dans `data/` avec le nom de votre data pack.
- Renommer le dossier `crazy_adventure/` situé dans `resource pack/assets/` avec le nom de votre data pack.

- Définissez l'avancement de la version de votre data pack en utilisant la [global convention](https://mc-datapacks.github.io/en/conventions/datapack_advancement.html), les fichiers sont situés dans
- - `crazy_adventure/advancements/crazy_adventure.json`
- - `global/advancements/your_username.json`

- Utilisez 'Rechercher et Remplacer' avec votre IDE préféré :
- - Recherchez : `vgreluchon` et remplacez le par votre nom (e.g. `stoupy`, `uwu42`, ...), c'est pour le champ nbt `from` concernant la [Common Trait Convention](https://mc-datapacks.github.io/en/conventions/common_trait.html)
- - Recherchez : `422` et remplacez le par **votre** [CustomModelData prefix](https://wiki.smithed.dev/conventions/cmd-prefixing) (e.g. `422 -> 201`, `422 -> 067`, ...)

- Et c'est fini !
Vous pouvez maintenant ajouter vos items, blocs, et machines. Vous pouvez également utiliser/modifier le dossier `resource pack`.

