extends CheckButton

var window = JavaScript.get_interface("window")
var console = JavaScript.get_interface("console")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_static_voter_body_entered(body):
	if body.is_in_group('admin'):
		print('COLLISION!')
		if(!$".".pressed):
			print("active")
			$".".pressed = true
			var retour = window.addVoter()
