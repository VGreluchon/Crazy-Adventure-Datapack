
# Imports
import os
import shutil

from stewbeet import Mem, Context


def beet_default(ctx: Context) -> None:
	ASSETS_FOLDER: str = f"{Mem.ctx.directory}/assets"
	manual_cache: str = Mem.ctx.meta.stewbeet.manual.cache_path # type: ignore

	# Copy simplenergy folder
	simplenergy_source = "../SimplEnergy/manual_cache/items/simplenergy"
	if not os.path.exists(simplenergy_source):
		os.system("git clone https://github.com/Stoupy51/SimplEnergy.git ../SimplEnergy")
	simplenergy_dest = f"{ASSETS_FOLDER}/simplenergy"

	# Copy from SimplEnergy to local assets folder
	if os.path.exists(simplenergy_source):
		shutil.copytree(simplenergy_source, simplenergy_dest, dirs_exist_ok=True)

	# Copy from assets to manual cache
	if os.path.exists(simplenergy_dest):
		shutil.copytree(simplenergy_dest, f"{manual_cache}/items/simplenergy", dirs_exist_ok=True)

	return

