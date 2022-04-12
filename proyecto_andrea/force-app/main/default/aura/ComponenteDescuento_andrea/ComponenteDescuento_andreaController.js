({
    save : function(component, event, helper) {
        helper.save(component, event);
        component.set("v.total",true);
    }
})