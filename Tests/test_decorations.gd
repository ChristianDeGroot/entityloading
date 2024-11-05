extends Node
#tests

func test_player_position():
	var player = Player.new()
	player.position = Vector2(100,100)
	assert(player.position == Vector2(100, 100), "Player position was not set correctly")
