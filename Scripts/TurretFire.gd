extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var num_bullets: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):	
#	pass

func _on_Timer_timeout():
	spawn_bullet()
	pass # Replace with function body.


func spawn_bullet():
	var angle = 0