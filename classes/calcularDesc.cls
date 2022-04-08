/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-07-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class calcularDesc {
    public calcularDesc() {
        
    }
    @AuraEnabled
    public static void calcula (Id Idpp) {
        double porcentaje;
        
        Opportunity importe = [Select Amount from Opportunity where ID=: Idpp];
        Opportunity descuento = [Select Descuento__c from Opportunity where ID=: Idpp];
        Opportunity subtotal = [Select Subtotal__c from Opportunity where ID=: Idpp];

        porcentaje = (descuento/100)* importe;

        subtotal.Subtotal__c = porcentaje;
    }

}
