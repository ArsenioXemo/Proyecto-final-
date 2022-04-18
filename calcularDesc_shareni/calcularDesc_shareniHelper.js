({
    helperMethod : function(component, event) {
        var action = component.get("c.calcula");
        var recordID = component.get("v.recordId");
        var recAccID = component.get("v.OpportunityObject.AccountId");
        
        //alert("ID oportunidad: "+recordID);
        //alert("ID cuenta: "+recAccID);

        action.setParams({'Idpp': recordID, 'Idcuenta': recAccID});
        action.setCallback(this, function(Response){
            alert("status: "+Response.getState());
        })
        $A.enqueueAction(action);
    }
})
