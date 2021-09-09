//Descrição
function sct_player_move(velocidade, deslize, pulo)
{
	///@arg velocidade
	///@arg deslize
	///@arg pulo
	
	#region Teclas
	var dir, esq, cima, baixo;
	dir = keyboard_check(ord("D"));
	esq = keyboard_check(ord("A"));
	cima = keyboard_check_pressed(ord("W"));
	baixo = keyboard_check_pressed(ord("S"));
	#endregion
	
	#region Cálculo de movimento
	//Horizontal
	var h1, horizontal;
	h1 = dir - esq;
	horizontal = h1 * velocidade;
	velh_atual = horizontal;
	
	//Vertical
	var vertical;
	vertical = 0;
	vertical = vertical + global.gravidade;
	velv_atual = vertical;
	
	#endregion
	
	#region Pulo
	if (cima && place_meeting(x, y + 1, obj_bloco))
		{
			vertical = -pulo * global.gravidade;
		}
	#endregion
	
	#region Colisão horizontal
	if(place_meeting(x + horizontal, y, obj_bloco))
		{
			while(!place_meeting(x+sign(horizontal), y, obj_bloco))
			{
				x = x + sign(horizontal);
			}
			horizontal = 0;
		}
	#endregion
	
	#region Colisão vertical
	if(place_meeting(x, y + vertical, obj_bloco))
		{
			while(!place_meeting(x, y+sign(vertical),obj_bloco))
			{
				y = y + sign(vertical);
			}
			vertical = 0;
		}
	#endregion
	
	#region Movimento aplicado
	x = x + horizontal;
	y = y + vertical;
	#endregion
	
}