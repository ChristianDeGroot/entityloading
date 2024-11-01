extends Node2D

var decorations = []
	
func _compare_x(a, b):
	return a.position.x < b.position.x

func _ready() -> void:
	for decoration in get_tree().get_nodes_in_group("decoration"):
		decorations.append(decoration)
		
	print("decorations loaded: ", decorations)
	decorations.sort_custom(_compare_x)
	 
	print("sorted decorations: ", decorations)

	for i in range(decorations.size()):
		var decoration = decorations[i]
		if i == 0:
			decoration.left = null
			if (decorations.size() == 1):
				decoration.right = null
			else:
				decoration.right = decorations[i + 1]
		else:
			if i == decorations.size() - 1:
				decoration.right = null
				decoration.left = decorations[i - 1]
			else:
				decoration.left = decorations[i - 1]
				decoration.right = decorations[i + 1]
				
	
	#Now print again
	for d in decorations:
		print(d.left, ", ", d.right)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
