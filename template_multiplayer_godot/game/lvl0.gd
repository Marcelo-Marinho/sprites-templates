extends Node2D

var packed_jogador = preload("res://player/jogador.tscn")

func _ready():
	var lista_jogadores = Networking.retornar_lista()
	for i in range(lista_jogadores.size()):
		var obj = packed_jogador.instantiate()
		$jogadores.add_child(obj)
		var node = get_node("p" + str(i + 1))
		obj.position = node.position
		obj.name = str(lista_jogadores[i][0])
		obj.set_multiplayer_authority(lista_jogadores[i][0])
		obj.set_nickname(lista_jogadores[i][1])
		obj.set_color(lista_jogadores[i][2], lista_jogadores[i][3], lista_jogadores[i][4])
	pass
