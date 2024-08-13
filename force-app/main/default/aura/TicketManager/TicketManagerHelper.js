({
    loadVoos : function( component, aeroportoOrigem, aeroportoDestino, dataPartida, dataRetorno) {
        let action = component.get('c.getVoos');
        action.setParam('aeroportoOrigem', aeroportoOrigem);
        action.setParam('aeroportoDestino', aeroportoDestino);
        action.setParam('dataPartida', dataPartida);
        action.setParam('dataRetorno', dataRetorno);

        action.setCallback(this, function(result){
            let state = result.getState();

            if(state == 'SUCCESS'){
                let voos = result.getReturnValue();
                component.set('v.voos', voos);
            }
            else if ( state == 'ERROR') {
                window.console.error(getError());
            }
        })
        // para disparar a action usamos a palavra reservada passando a action como parametro
       $A.enqueueAction(action);
    }
})
