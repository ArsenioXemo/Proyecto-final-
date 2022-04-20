({
    doInit: function(component, event){
        let action = component.get("c.getOpp");
		let recordId = component.get("v.recordId");
		console.log(recordId);
		action.setParams({
			idOpp: recordId
		});
		action.setCallback(this, function(response) {
			let status = response.getState();
			console.log(status);

			if(status == "SUCCESS") {
				let opportunity = response.getReturnValue();
				console.log('opportunity', opportunity);
                component.set("v.OpportunityObject", opportunity);
                component.set("v.descuento", opportunity.Descuento__c);
			}
		});
		$A.enqueueAction(action);
    },

   save: function(component, event){
        let porcentaje = component.get("v.descuento");
        let opportunity = component.get("v.OpportunityObject");

        console.log('porcentaje: ', porcentaje);
        console.log('opportunity: ', opportunity);

        let action = component.get("c.discount");
		action.setParams({
            opp: opportunity,
			discount1: porcentaje
		});
		action.setCallback(this, function(response) {
			var status = response.getState();
			console.log(status);

			if(status == "SUCCESS") {
				console.log('save');
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Descuento",
                    "message":"Descuento de " + porcentajeValue + "% Guardado Exitosamente"
                });
                toastEvent.fire();

			}
		});
		$A.enqueueAction(action);
       
       component.set("v.total",true);
    }      
   
})