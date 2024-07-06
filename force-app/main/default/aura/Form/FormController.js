({
    handleSuccess : function(component, event, helper) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            " type": "success",
            "title": "Success!",
            "message": "Deu certo!."
        });
        //metodo fire aplicado na chamada do objeto
        toastEvent.fire();
        
    }
})