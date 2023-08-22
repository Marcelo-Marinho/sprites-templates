extends Control

func _ready():
	Networking.lista_alterada.connect(self.lista_alterada)
	Networking.conexao_resetada.connect(self.conexao_resetada)
	pass

func _on_criar_pressed():
	if int($r.text) > 255:
		$r.text = str(255)
	if int($g.text) > 255:
		$g.text = str(255)
	if int($b.text) > 255:
		$b.text = str(255)
	$Criar.disabled = true
	$Conectar.disabled = true
	var ip = Networking.retornar_ip()
	$ip_text.text = "Mande esse IP para seus amigos se conectarem: " + ip
	Networking.atualizar_nome($NomeEdit.text, $r.text, $g.text, $b.text) #passando nome jogadores
	Networking.criar_servidor()
	pass # Replace with function body.


func _on_conectar_pressed():
	if int($r.text) > 255:
		$r.text = str(255)
	if int($g.text) > 255:
		$g.text = str(255)
	if int($b.text) > 255:
		$b.text = str(255)
	$Criar.disabled = true
	$Conectar.disabled = true
	Networking.atualizar_ip($IpEdit.text)
	Networking.atualizar_nome($NomeEdit.text, $r.text, $g.text, $b.text) #passando nome jogadores
	Networking.entrar_servidor()
	pass # Replace with function body.
	
func lista_alterada():
	var lista = Networking.retornar_lista()
	$ListaJogadores.clear()
	for i in range(lista.size()):
		if lista[i][0] == 1 and lista[i][0] != Networking.id:
			$ListaJogadores.add_item(lista[i][1] + str(" <host>") + str(" - rgb{") + str(lista[i][2]) + str(", ") + str(lista[i][3]) + str(", ") + str(lista[i][4]) + str("}"))
		elif lista[i][0] == 1 and lista[i][0] == Networking.id:
			$ListaJogadores.add_item(lista[i][1] + str(" [host - você]") + str(" <= rgb{") + str(lista[i][2]) + str(", ") + str(lista[i][3]) + str(", ") + str(lista[i][4]) + str("}"))
		elif lista[i][0] == Networking.id:
			$ListaJogadores.add_item(lista[i][1] + str(" (você)") + str(" <= rgb{") + str(lista[i][2]) + str(", ") + str(lista[i][3]) + str(", ") + str(lista[i][4]) + str("}"))
		else:
			$ListaJogadores.add_item(lista[i][1] + str(" - rgb{") + str(lista[i][2]) + str(", ") + str(lista[i][3]) + str(", ") + str(lista[i][4]) + str("}"))
	pass
pass

#lista[player][[0, 1, 2, 3, 4], [id1, nome1, r1, g1, b1], [id2, nome2, r2, g2, b2]]
#quando exportar para o celular, marcar o seguinte:
#acess network state
#internet
#internet permissions

func _on_comecar_pressed():
	if multiplayer.is_server():
		rpc("comecar_jogo")
	pass

@rpc('any_peer', 'call_local')
func comecar_jogo():
	get_tree().change_scene_to_file("res://game/lvl0.tscn")
	pass

func conexao_resetada():
	$ErrorPanel.show()
	pass


func _on_ok_pressed():
	$Criar.disabled = false
	$Conectar.disabled = false
	$ErroPanel.hide()
	pass # Replace with function body.
