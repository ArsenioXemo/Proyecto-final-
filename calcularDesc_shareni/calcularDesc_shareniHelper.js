({
    helperMethod : function(component, event) {
        var action = component.get("c.calcula");
        var recordID = component.get("v.recordId");

        action.setParam({Idpp: recordID});
        $A.enqueueAction(action);
    }
})
