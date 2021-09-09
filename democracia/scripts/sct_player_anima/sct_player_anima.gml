//Descrição
function sct_player_anima(vl_at,vlv_at)
{
	///@arg velocidade atual
	
	#region Argumentos
	var direcao, anima; 
	direcao = "parado";
	anima = 0.4;
	#endregion
	
	#region Enumerador
	enum animacao
	{
		direita	= 1,
		esquerda	= -1,
		pulando	= spr_player_jump
	}
	#endregion
	
	#region Direcionamento
	if(vl_at = 0)
		{
			image_speed = 0;
		}
	if(vl_at > 0)
		{
			image_speed = anima;
			image_xscale = animacao.direita;
		}
	if(vl_at < 0)
		{
			image_speed = anima;
			image_xscale = animacao.esquerda;
		}
	if(vlv_at < 0)
		{
			image_speed = anima;
			image_index = animacao.pulando;
		}
			
	#endregion
}