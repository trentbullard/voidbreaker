# content/defs/flux_anchor_reward_def.gd (Godot 4.6.3)
extends Resource
class_name FluxAnchorRewardDef

@export_group("Earnest Run Gate")
## Minimum elapsed run time before a low-progress run can earn Flux Anchors.
@export var no_reward_min_elapsed_sec: float = 60.0
## Elapsed time that fully satisfies the soft reward gate.
@export var full_gate_elapsed_sec: float = 120.0
## Progression wave that fully satisfies the soft reward gate.
@export var full_gate_wave_index: int = 5
## Enemy kill count that fully satisfies the soft reward gate.
@export var full_gate_enemy_kills: int = 10

@export_group("Performance Rewards")
## Flux Anchors awarded per minute survived before the time cap.
@export var anchors_per_minute: float = 2.5
## Maximum Flux Anchors awarded from time survived.
@export var max_time_anchors: float = 40.0
## Flux Anchors awarded per progression wave reached before the wave cap.
@export var anchors_per_wave: float = 2.25
## Maximum Flux Anchors awarded from progression waves.
@export var max_wave_anchors: float = 90.0
## Flux Anchors awarded per enemy kill before the enemy kill cap.
@export var anchors_per_enemy_kill: float = 0.25
## Maximum Flux Anchors awarded from enemy kills.
@export var max_enemy_kill_anchors: float = 30.0
## Flux Anchors awarded per boss kill.
@export var anchors_per_boss_kill: float = 20.0
## Flux Anchors awarded per completed stage.
@export var anchors_per_stage_completed: float = 15.0
## Bonus Flux Anchors awarded when the run ends without counting as a death.
@export var run_complete_bonus: float = 15.0
## Maximum base Flux Anchors before Flux Anchor yield modifiers.
@export var max_base_run_anchors: float = 225.0
