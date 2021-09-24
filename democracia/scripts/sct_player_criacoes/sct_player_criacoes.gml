//Descrição
function sct_player_criacoes(criar)
{
	#region Argumentos  e validade
	///@arg Criar?
		if(criar = false)
			{
				exit;
			}
	#endregion
	
	#region Mira
		var mira;
		mira = obj_mira;
		if(!instance_exists(mira))
			{
				instance_create_layer(x,y,"Instances", mira);
			}
	#endregion
	
	#region HUD
		var HUD;
		HUD = obj_hud;
		if(!instance_exists(HUD))
			{
				instance_create_layer(x, y, "Instances", HUD);
			}
	#endregion
	
}