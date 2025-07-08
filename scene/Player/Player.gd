extends Node2D

class_name Player

signal die

const Element = preload("res://script/Element.gd").Element

var MaxHp : int = 1000
var MaxSp : int = 200
var MaxCorruption : int = 500
var MaxAmmo : int = 6

var hp: int = MaxHp
var sp: int = MaxSp
var corruption: int = MaxCorruption
var ammo: int = MaxAmmo

var speed:int =120

@export var skillList : Array[Skill] = []

var resistance: Dictionary={
	Element.NEUTRAL : 1.00 ,
	Element.FIRE : 1.00 ,
	Element.ICE : 1.00 ,
	Element.LIGHTING : 1.00 ,
	Element.WIND : 1.00 ,
	Element.DARK : 1.00 ,
	Element.HOLY : 1.00 ,
}

var amplifier: Dictionary={
	Element.NEUTRAL : 1.00 ,
	Element.FIRE : 1.00 ,
	Element.ICE : 1.00 ,
	Element.LIGHTING : 1.00 ,
	Element.WIND : 1.00 ,
	Element.DARK : 1.00 ,
	Element.HOLY : 1.00 ,
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func take_damage(damage:int):
	hp-=damage
	if (hp <= 0):
		die.emit()

func reduce_sp(nb_sp : int) -> bool:
	if(sp<nb_sp):
		return false
	sp -= nb_sp
	return true

func reduce_corruption(nb_corruption : int)-> bool:
	corruption -= nb_corruption
	return true

func reduce_ammo(nb_ammo : int)-> bool:
	if(ammo < nb_ammo):
		return false 
	ammo -= MaxAmmo
	return true

func increase_hp(nb_hp:int):
	hp+=nb_hp
	if(hp>MaxHp):
		hp = MaxHp

func increase_sp(nb_hp:int):
	hp+=nb_hp
	if(hp>MaxHp):
		hp = MaxHp
	
func increase_corruption(nb_hp:int):
	hp+=nb_hp
	if(hp>MaxHp):
		hp = MaxHp
	
func increase_ammo(nb_hp:int):
	hp+=nb_hp
	if(hp>MaxHp):
		hp = MaxHp
	
