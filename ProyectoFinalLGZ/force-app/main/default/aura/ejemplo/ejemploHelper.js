({
// 	helperMethod : function(component, event) {
// 		// alert("Funcionó desde el helper");
// 		var action = component.get("c.getValuesID");
// 		var recordID = component.get("v.recordId");
// 		action.setParam({Idpp: recordID});
// 		action.setCallback(this, function(response) {
// 			var status = response.getState();
// 			if(status == "SUCCESS") {
// 				alert("Funcionó");//Cambiar aqui por el toast para pintar el name.
// 			}
// 		});
// 		$A.enqueueAction(action);
		
// 	}
// })


helperMethod : function(component, event) {
	var toastEvent = $A.get("e.force:showToast");
	toastEvent.setParams({
		"title": "Funcionó!",
		"message": "Este es un toast de ejemplo :3"
	});
	toastEvent.fire();
}


// ({
// 	helperMethod : function(component, event) {
// 		var action = component.get("c.getValuesID");
// 		var recordID = component.get("v.recordId");
// 		action.setParam({Idpp: recordID});
// 		action.setCallback(this, function(response) {
// 			var status = response.getState();
// 			// var toastEvent = $A.get("e.force:showToast");
// 			if(status == "SUCCESS") {
// 				// toastEvent.setParams({
// 				// 	"title": "Success!",
// 				// 	"message": "The record has been updated successfully."
// 				// })
// 				// toastEvent.fire();	
// 				alert("Funciono");//Cambiar aqui por el toast para pintar el name.
// 			}
// 		});
// 		$A.enqueueAction(action);
// 	}
// })

// component.set("v.saveStateAVED");
// 			var toastEvent = $A.get("e.force:showToast");
// 			toastEvent.setParams({
// 				"title": "Success!",
// 				"message": "The record has been updated successfully."
// 			})
// 			toastEvent.fire();


// ({
//     handleSuccess: function (cmp, event, helper) {
//         cmp.find('notifLib').showToast({
//             "title": "Record updated!",
//             "message": "The record "+ event.getParam("id") + " has been updated successfully.",
//             "variant": "success"
//         });
//     },

//     handleError: function (cmp, event, helper) {
//         cmp.find('notifLib').showToast({
//             "title": "Something has gone wrong!",
//             "message": event.getParam("message"),
//             "variant": "error"
//         });
//     }
})