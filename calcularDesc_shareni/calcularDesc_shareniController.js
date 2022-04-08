({
    myAction : function(component, event, helper) {

    },
    calcDescuento : function(component, event, helper) {
      component.find("edit").get("e.recordSave").fire();
      helper.helperMethod(component,event);
    }
})
