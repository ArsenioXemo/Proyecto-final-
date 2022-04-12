/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class calcularDesc_And {

    @AuraEnabled
    public static Opportunity getOpp(Id idOpp){
        Opportunity opp1 = [SELECT Id, AccountId, Name, Amount, Descuento__c, subtotal__c FROM Opportunity WHERE Id =: idOpp];
        return opp1;
    }
    
    @AuraEnabled
    public static void discount (Id idOpp, Opportunity opp, Double discount1){
            opp.Descuento__c = discount1;
            opp.subtotal__c = opp.Amount-(opp.Amount *( discount1/100));
            update opp;
     }
    
}