({
	trocarImagem : function(component) {
		let eVisivel = component.get("v.visivel");
        component.set("v.visivel", !eVisivel);
        
        if (!eVisivel) {
            alert('Veja o Mapa');
        } else {
            alert('Chore com o Gato Chorao,pois nao achou tesouro!');
        }
    }

})