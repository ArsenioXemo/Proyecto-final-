/** 
  @description       : 
  @author            : angelica.solis.avila.contractor@bbva.com
  @group             : 
  @last modified on  : 04-07-2022
  @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class calcularDesc_Angie {
    public calcularDesc_Angie() {
       
        @AuraEnabled
        public static Opportunity getOpportunity (Id id) {
            Opportunity opportinity = [SELECT Id, Name, AccountId, Amount, Descuento__c,subtotal__c,  FROM Opportunity WHERE Id =: id];
            return opportinity;
        }
    
        @AuraEnabled
        public static void savePercent (Opportunity opportunity, Double percent) {
            opportunity.Descuento__c = percent;
            opportunity.subtotal__c = opportunity.Amount - ((percent/ 100) * opportunity.Amount);
            update opportunity;
            
    }
}
