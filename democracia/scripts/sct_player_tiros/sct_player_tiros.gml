//Descrição
function sct_player_tiros(atirar)
{
	
	#region Argumentos
	///@arg Tiro
	#endregion
	
	#region Validade
		if(atirar = false)
			{
				exit;
			}
	#endregion
	
	#region Teclas
		var botao_tiro, botao_carga, municao_up, municao_down;
		botao_tiro			= mouse_check_button_released(mb_left);
		botao_carga		= mouse_check_button_released(mb_right);
		municao_up		= keyboard_check_released(ord("E"));
		municao_down	= keyboard_check_released(ord("Q")); 
	#endregion
	
	#region Config de seleção de arma
	//Cada botão aumenta ou diminui o número referente a posição do tiro
	if(municao_up &&! tiro_eq = 1)
		{
			tiro_eq ++;
		}
	if(municao_down &&! tiro_eq = 0)
		{
			tiro_eq --;
		}
	
	var tiro;
	tiro[0] = obj_tiro00;
	tiro[1] = obj_tiro01;
	#endregion
	
	#region Criação do tiro
		if(botao_tiro)
			{
				instance_create_layer(x, y,"Instances", tiro[tiro_eq]);
			}
	#endregion
	
}