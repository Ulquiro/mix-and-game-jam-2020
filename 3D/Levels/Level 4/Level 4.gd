extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var clockwise = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if($"Ball".rb):
		$Turret.look_at($"Ball".rb.global_transform.origin,Vector3(0,1,0))
		$Turret2.look_at($"Ball".rb.global_transform.origin,Vector3(0,1,0))
		$Turret3.look_at($"Ball".rb.global_transform.origin,Vector3(0,1,0))
		$Turret4.look_at($"Ball".rb.global_transform.origin,Vector3(0,1,0))
		$Turret5.look_at($"Ball".rb.global_transform.origin,Vector3(0,1,0))
		$Turret6.look_at($"Ball".rb.global_transform.origin,Vector3(0,1,0))
	pass

func rotate_turret(t : Turret):
	t.rotate(Vector3(1,0,0),PI/30)
	t.rotate(Vector3(0,0,1),PI/30)
	t.rotate(Vector3(0,1,0),PI/30)
	pass


func _on_ChangeRot_timeout():
	clockwise *= -1
	pass # Replace with function body.
