/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-07-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class calcularDesc_Angie {
    public calcularDesc_Angie() {
       
        @AuraEnabled
        public static Opportunity getOpportunity (Id Idpp) {
            Opportunity oppret = [SELECT Id, Name,Amount,Descuento__c, AccountId, subtotal__c FROM Opportunity WHERE Id =: Idpp];
            return oppret;
        }
    
        @AuraEnabled
        public static void savePercentage (Opportunity opp, Double percentage) {
            opp.Descuento__c = percentage;
            opp.subtotal__c = opp.Amount - ((percentage * opp.Amount) / 100);
            update opp;


    }
}
