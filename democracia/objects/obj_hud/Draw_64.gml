/// @description desenho
//Check de player vivo
if(global.morto = true)
	{
		exit;
	}

#region Vida do Player
	draw_text(15,10,"VIDAS");
	draw_text(15,100,"ESCUDOS");
	draw_text(15,200,"ARMA EQUIPADA");

	//Vidas
	var n1,n2;
	n1 = 25;
	n2 = 35;
	repeat(global.vida_atual)
		{
			draw_sprite_ext(spr_vidas,1,0+n1,50,1,1,0,c_white,1);
			n1 += 25;
		}
	
	global.vida_diffe	= global.vida_max - global.vida_atual;
	repeat(global.vida_diffe)
		{
			draw_sprite_ext(spr_vidas,0,10+n1,50,1,1,0,c_white,1);
			n1 += 25;
		}
	
#endregion

#region Inventário de armas
	var tiro_d;
	tiro_d = obj_player.tiro_eq;
	if(tiro_d = 0)
		{
			desenho = "arma00";
		}
	if(tiro_d = 1)
		{
			desenho = "arma01";
		}
		
		var t00, t01, alfa00, alfa01, alfa_ativo, alfa_inativo;
		alfa00 = 0;
		alfa01 = 0;
		alfa_ativo = 1;
		alfa_inativo = 0.25;

	switch (desenho)
		{

			case "arma00":
			alfa00 = alfa_ativo;
			alfa01 = alfa_inativo;
			t00 = draw_sprite_ext(spr_tiro00, 0, 30, 250, 2, 2, 0, c_white, alfa00);
			t01 = draw_sprite_ext(spr_tiro01, 0, 90, 250, 2, 2, 0, c_white, alfa01);
			break;
			
			case "arma01":
			alfa00 = alfa_inativo;
			alfa01 = alfa_ativo;
			t00 = draw_sprite_ext(spr_tiro00, 0, 30, 250, 2, 2, 0, c_white, alfa00);
			t01 = draw_sprite_ext(spr_tiro01, 0, 90, 250, 2, 2, 0, c_white, alfa01);
			break;
		}

#endregion