//Descrição
function sct_player_move(velocidade, pulo, desce,velo_run)
{
	#region Argumentos
	///@arg velocidade
	///@arg força do pulo
	///@arg velocidade descida
	///@arg velocidade de corrida
	#endregion
	
	#region Teclas
		var cima,cima_r,baixo,baixo_r,dir,dir_r,esq,esq_r,run;
		cima		= keyboard_check_pressed(ord("W"));
		cima_r	= keyboard_check_released(ord("W"));
		baixo		= keyboard_check(ord("S"));
		baixo_r	= keyboard_check_released(ord("S"));
		dir		= keyboard_check(ord("D"));
		dir_r		= keyboard_check_released(ord("D"));
		esq		= keyboard_check(ord("A"));
		esq_r		= keyboard_check_released(ord("A"));
		run		= keyboard_check(vk_shift);
	#endregion

	#region Clamp de tela
		var xx1,xx2, yy1, yy2;
		xx1 = 30;
		xx2 = room_width - xx1;
		yy1 = 41;
		yy2 = room_height - yy1;
		x = clamp(x, xx1, xx2);
		y = clamp(y, yy1, yy2);
	#endregion
	
	#region Variáveis locais
		var solido, multiplicador_pulo, h1, h2, preso;
		solido = place_meeting(x, y + 4, obj_bloco);
		multiplicador_pulo = 1.25;
		h1 = dir - esq;
		h2 = x + sign(horizontal);
		preso = place_meeting(x + sign(horizontal), y, obj_bloco);
	#endregion
	
	#region Cálculo de movimento horizontal
		if(!run)
			{	
				horizontal = h1 * velocidade;
			}
		else
			{
				horizontal = h1 * (velocidade * velo_run);
			}
		velh_atual = horizontal;
	#endregion
	
	#region Colisão horizontal
	if(place_meeting(x+(horizontal), y, obj_bloco))
		{
			while(!place_meeting(x+sign(horizontal), y, obj_bloco))
			{
				x = x + sign(horizontal);
			}
			horizontal = 0;
		}
	#endregion
	
	#region Movimento horizontal aplicado
		x = x + horizontal;
	#endregion
	
	#region Gravidade, pulo, comando descende
	velv_atual = vertical;
		if (!solido)
			{
			vertical += global.gravidade;
			if(cima_r && vertical < 0)
				{
					vertical = vertical * 0.5;
				}
			
			if (baixo &&! solido)
				{
					vertical = desce;
					if(baixo_r)
						{
							vertical = vertical*0.7;
						}
				}
			}
		if (solido)
		{
			if(cima)
				{
					vertical = pulo;
				}
			if(cima && run &&! horizontal = 0)
				{
					vertical = pulo * multiplicador_pulo;
				}
			if(cima and baixo)
				{
					vertical = 0;
				}
		}
	#endregion
	
	#region Colisão vertical
		repeat (abs(vertical))
			{
				if (!place_meeting(x,y+sign(vertical),obj_bloco))
					{
						y += sign(vertical);
					}
				else
					{
					vertical = 0;
					break;
					}
			}
	#endregion
}