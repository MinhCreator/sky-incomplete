@tool

extends Node3D

@onready var day = preload ('res://sky/examples/day_sky.tres')
@onready var night = preload ('res://sky/examples/night_sky.tres')
@export var env := WorldEnvironment
@export var sec: int = 60
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
var rng = RandomNumberGenerator.new()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var rd = randi_range(0, 1)

	sec -= 1
	if sec == - 1:
		#_update_sky(rd)
		sec = 60

func _update_sky(value: int) -> void:
	if value == 0:
		_day()
	elif value == 1:
		_night()

func _day() -> void:
	pass

func _night() -> void:
	#env.environment.sky.sky_material = night
	pass