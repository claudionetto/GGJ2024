/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Fazendo a colisão horizontal
//Checando se estou colidindo com a parede
var _col	= instance_place(x + velh, y, obj_chao);
//Se eu colidir eu grudo em quem colidi
if (_col)
{
	//checando se eu estou indo para a direita
	if (velh > 0)
	{
		//Grundando na parte esquerda da parede
		x = _col.bbox_left + (x - bbox_right);
	}
	
	//Checando se eu estou indo para a esquerda
	if (velh < 0)
	{
		x = _col.bbox_right + (x - bbox_left);
	}
	
	//uma vez que eu colidi, não importa o lado, eu paro
	velh = 0;
}

x += velh;

var _col	= instance_place(x, y + velv, obj_chao);
if (_col)
{
	if (velv > 0)
	{
		//Indo para baixo
		y = _col.bbox_top + (y - bbox_bottom);
	}
	if (velv < 0)
	{
		//indo para cima
		y = _col.bbox_bottom + (y - bbox_top);
	}
	
	velv = 0;
}

y += velv;

