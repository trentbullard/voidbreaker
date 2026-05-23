# content/defs/meta_upgrade_catalog.gd (Godot 4.6.3)
extends Resource
class_name MetaUpgradeCatalog

## Ordered list of meta upgrades available to the main menu and runtime.
@export var upgrades: Array[MetaUpgradeDef] = []


func get_upgrades() -> Array[MetaUpgradeDef]:
	var resolved: Array[MetaUpgradeDef] = []
	var seen_ids: Dictionary = {}
	var seen_paths: Dictionary = {}
	for upgrade: MetaUpgradeDef in upgrades:
		if upgrade == null:
			continue

		var id_key: String = upgrade.id.strip_edges()
		if id_key != "":
			if seen_ids.has(id_key):
				continue
			seen_ids[id_key] = true

		var path_key: String = upgrade.resource_path
		if path_key != "":
			if seen_paths.has(path_key):
				continue
			seen_paths[path_key] = true

		resolved.append(upgrade)
	return resolved
