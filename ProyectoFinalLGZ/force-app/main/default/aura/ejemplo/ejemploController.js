({
	myAction : function(component, event, helper) {
	},

	save : function(component, event, helper) {
		component.find("edit").get("e.recordSave").fire();
		let m = component.get("{!v.truthy}");
		component.set("{!v.truthy}",m==true ? false: false);
		
	},

	ChangBool : function(component, event,helper) {
		let m = component.get("{!v.truthy}");
		component.set("{!v.truthy}",m==true ? true: true);
	},

	Llamafuncion : function(componet, event, helper) {
		// alert("Funciono");
		helper.helperMethod(componet,event);
	}

})