
extends Resource
class_name Skill

enum SkillType {NONE ,MELEE , RANGED}
enum SkillNature {NONE , MAGIC}
const Element  = preload("res://script/Element.gd").Element

@export var energy: int
@export var damage: int
@export var corruption: int
@export var target_type: String = "enemy" 

@export var skill_type : SkillType = SkillType.NONE
@export var skill_nature : SkillNature = SkillNature.NONE


@export var inflict_buff : bool = false

@export var buff_inflicted : Array[Effect] =[]

@export var inflict_debuff : bool = false

@export var debuff_inflicted : Array[Effect] =[]

@export var inflict_affliction : bool = false

@export var affliction_inflicted : Array[Effect] =[]




func apply(caster: Node, target: Node):
	if target.has_method("take_damage"):
		target.take_damage(damage)
	if caster.has_method("reduce_sp"):
		caster.consume_mana(energy)
