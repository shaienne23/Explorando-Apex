({
    init : function(component, event, helper) {
        let aeroportoOrigem = 'ID';
        let aeroportoDestino = 'ID';
        let dataPartida = '2024-01-10';
        let dataRetorno = '2024-02-10';

        helper.loadVoos(component, aeroportoOrigem, aeroportoDestino, dataPartida, dataRetorno)
    }
})
