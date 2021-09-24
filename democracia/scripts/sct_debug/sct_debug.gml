//Descrição
function sct_debug(debugar, debug_ativo)
{
	#region Validade
	if(debugar = false)
		{
			exit;
		}
	#endregion

	#region Argumento
	///@arg Debug Ativo
	#endregion
	
	#region Debug Ativo
	switch(debug_ativo)
		{
			case "tiro ativo":
			show_debug_message(obj_player.tiro_eq);
			break;
			
			case "desenho do tiro":
			show_debug_message(obj_hud.desenho);
			break;
		}
	#endregion
}