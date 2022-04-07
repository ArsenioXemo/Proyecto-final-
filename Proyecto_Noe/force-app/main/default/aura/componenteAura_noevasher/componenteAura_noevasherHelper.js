({
    doInit: function(component, event){
        let action = component.get("c.getOpportunity");
		let idRecord = component.get("v.recordId");
		console.log(idRecord);
		action.setParams({
			Idpp: idRecord
		});
		action.setCallback(this, function(response) {
			let status = response.getState();
			console.log(status);

			if(status == "SUCCESS") {
				let opportunity = response.getReturnValue();
				console.log('opportunity', opportunity);
                component.set("v.myOpportunity", opportunity);
                component.set("v.descuento", opportunity.Descuento__c);
			}
		});
		$A.enqueueAction(action);
    },

    save: function(component, event){
        let porcentajeValue = component.find("valuePorcentaje").get('v.value');
        let opportunity = component.get("v.myOpportunity");

        console.log('porcentajeValue: ', porcentajeValue);
        console.log('opportunity: ', opportunity);

        let action = component.get("c.savePercentage");
		action.setParams({
            opp: opportunity,
			percentage: porcentajeValue
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
    }
})
