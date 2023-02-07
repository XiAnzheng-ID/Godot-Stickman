extends Node

func _ready():
	#opening another script / inheritance
	var n = get_node("../Node") #var x = get_node("Path to the script or code") 
	n.connect("loop_finished", self, "on_loop_finish")
	#n.connect("signal emiter var" , object dealing with this signal, "function name")

func on_loop_finish():
	print("loop has finished")
