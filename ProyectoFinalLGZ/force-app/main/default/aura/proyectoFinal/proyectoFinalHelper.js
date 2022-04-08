({

    helperMethod : function(component, event) {
        var calcularDesc_L = component.get("c.calcularDesc");
        var recordId = component.get("v.recordId");
        var amount = component.get("v.OpportunityObject.Amount");
       
        calcularDesc_L.setParam({Idpp: recordId, percentage: amount});
        $A.enqueueAction(calcularDesc_L);

        let porcentajeValue = component.find("valuePorcentaje").get('v.value');
        let opportunity = component.get("v.OpportunityObject");

        console.log('porcentajeValue: ');
        console.log('opportunity: ', opportunity);

        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": "Correcto!",
            "message": "Se realizó correctamente"
        });
        toastEvent.fire();
    }
    
    })