/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-18-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class calcularDesc {
    public calcularDesc() {
        
    }
    @AuraEnabled
    public static void calcula (Id Idpp, String Idcuenta) {
        System.debug('idpp='+Idpp);
        double porcentaje;
        
        Double importe = [Select Id, Amount from Opportunity where ID=: Idpp].Amount;
        Opportunity descuento = [Select Id, Descuento__c from Opportunity where ID=: Idpp];
        Opportunity subtotal = [Select Id, Subtotal__c from Opportunity where ID=: Idpp];
        //Account descCuenta = [Select Id, Descuento__c from Account where ID=: '0018c000029DR0pAAG'];
        Account descCuenta = [Select Id, Descuento__c from Account where ID=: Idcuenta];

        porcentaje = (descuento.Descuento__c/100)* importe;

        descCuenta.Descuento__c = descuento.Descuento__c;
        subtotal.Subtotal__c = porcentaje;

        update subtotal;
        update descCuenta;
    }

}
