extends Node2D

var inp3
var inp4
var score3 = 0
var score4 = 0
onready var ball_position

func _physics_process(delta):
	inp3 = Input.get_action_strength("ui2_down") - Input.get_action_strength("ui2_up")
	inp4 = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	$Box3/CollisionShape2D.position.y += 1400*delta*inp3
	$Box4/CollisionShape2D.position.y += 1400*delta*inp4
	ball_position = $Ball.position.x
	if $Ball.position.x < 5:
		score4 = score4+1
	if $Ball.position.x > 1019:
		score3 =score3+1
	$ScoreLabel3.text=str(score3)
	$ScoreLabel4.text=str(score4)


# Called when the node enters the scene tree for the first time.
func _ready():
		pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass