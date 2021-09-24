/// @description configurações

//Scripts
sct_player_move(velocidade, pulo_vel, desce, velo_run);
sct_player_anima(velh_atual,velv_atual);
sct_player_tiros(true);

//Condição de vida

if(global.vida_atual <= 0)
	{
		instance_destroy();
	}