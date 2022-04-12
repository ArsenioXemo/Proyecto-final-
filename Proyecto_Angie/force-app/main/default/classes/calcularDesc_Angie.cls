/** 
  @description       : 
  @authoor            : angelica.solis.avila.contractor@bbva.com
  @group             : 
  @last modified on  : 04-11-2022
  @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class calcularDesc_Angie {

    @AuraEnabled
    public static Opportunity getOpportunity (Id idopp) {
        Opportunity opportunity = [SELECT Id, Name, AccountId, Amount, Descuento__c, subtotal_c FROM Opportunity WHERE Id =: idopp];
        return opportunity;
   }
   
    @AuraEnabled
    public static void savePercent (Opportunity opportunity, Double percent) {
        opportunity.Descuento__c = percent;
        opportunity.subtotal__c = opportunity.Amount - ((percent/ 100) * opportunity.Amount);
        update opportunity;   
   }  
