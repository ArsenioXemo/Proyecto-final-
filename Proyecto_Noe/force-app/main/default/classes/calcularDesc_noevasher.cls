public with sharing class calcularDesc_noevasher {
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
