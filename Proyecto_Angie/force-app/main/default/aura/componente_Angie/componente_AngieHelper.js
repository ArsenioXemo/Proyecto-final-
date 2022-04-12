({
	helperMethod : function(component, event) {
		var action = component.get("c.getValuesID");
		var recordID = component.get("v.recordId");
		action.setParam({idopp: recordID});
		action.setCallback(this, function(response) {
			var status = response.getState();
			if(status == "SUCCESS") {
				alert("Funciona");
			}
		});
		$A.enqueueAction(action);
	}
})