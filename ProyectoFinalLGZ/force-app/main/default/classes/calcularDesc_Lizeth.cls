/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-08-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class calcularDesc_Lizeth {
    // public static double desc (Integer desc) {

    // desc = Amount - desc;
    //     return desc;
    // }

    // public static double subtotal (Double am, Double desc) {
    //     return am + desc;
    // }

    @AuraEnabled
    public static void calcularDesc (Id Idpp, double amount) {
       
        double porcent = (Descuento__c/100)* amount;

        subtotal.Subtotal__c = porcent;
        
        
        Opportunity subtotal = [Select Subtotal__c from Opportunity where ID=: Idpp];
    }

}

