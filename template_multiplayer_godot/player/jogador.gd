extends CharacterBody2D

var velocidade = 70
var nickname = ""
var r = 0
var g = 0
var b = 0

func _process(delta):
	if is_multiplayer_authority(): #verificar se é jogador do local
		pass
	pass

func set_nickname(nickname):
	self.nickname = nickname
	$nome.text = nickname
	pass

func set_color(r, g, b):
	self.r = r
	self.g = g
	self.b = b
	$sprite.modulate = Color(float(r)/255.00, float(g)/255.00, float(b)/255.00)
	pass
