extends Node2D

var window = JavaScript.get_interface("window")
var console = JavaScript.get_interface("console")
var _permission_callback = JavaScript.create_callback(self, "_on_permissions")

# Called when the node enters the scene tree for the first time.
func _ready():
	print($register_proposal)
	print($register_proposal.pressed)
#	var notification = JavaScript.get_interface("Notification")
#	notification.requestPermission().then(_permission_callback)

func _on_permissions(args):
	# The first argument of this callback is the string "granted" if the permission is granted.
	var permission = args[0]
	console.log(permission)
	if permission == "granted":
		print("Permission granted, sending notification.")
		# Create the notification: `new Notification("Hi there!")`
		JavaScript.create_object("Notification", "Hi there Cyril!")
	else:
		print("No notification permission.")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
