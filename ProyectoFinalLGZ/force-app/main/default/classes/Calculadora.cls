/**
 * @description       : 
 * @author            : Arsenio.perez.lopez.contractor@bbva.com
 * @group             : 
 * @last modified on  : 03-31-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class Calculadora {
    /**
    * @description 
    * @author Arsenio.perez.lopez.contractor@bbva.com | 03-23-2022 
    * @param Double A 
    * @param Double b 
    * @return double 
    **/
    public static double suma(Double A, Double b) {
        return A+b;
    }

    /**
    * @description 
    * @author Arsenio.perez.lopez.contractor@bbva.com | 03-23-2022 
    * @param List<Double> Lista 
    * @return double 
    **/
    public static double sumadesuma(List<Double> Lista) {
        Double varReturn = 0;
        for(Double A: Lista) {
            varReturn = varReturn+A;
        }
        return varReturn;
    }

    /**
    * @description 
    * @author Arsenio.perez.lopez.contractor@bbva.com | 03-23-2022 
    * @param Double A 
    * @param Double b 
    * @return double 
    **/
    public static double resta(Double A, Double b) {
        return A-b;
    }
    /**
    * @description 
    * @author Arsenio.perez.lopez.contractor@bbva.com | 03-23-2022 
    * @param Double A 
    * @param Double b 
    * @return double 
    **/
    public static double multiplicacion(Double A, Double b) {
        return A*b;
    }
    /**
    * @description 
    * @author Arsenio.perez.lopez.contractor@bbva.com | 03-23-2022 
    * @param Double A 
    * @param Double b 
    * @return double 
    **/
    public static double division(Double A, Double b) {
        return A/b;
    }
    
    public static double division(Double A, Double b) {
        return A/b;
    }

    public static double BooleanNumber(Double A, Double b) {
        Double varSuma = A+b;
        if (varSuma > 20) {
            System.debug('True');
        } else{
            System.debug('False');
        }
    }

    public static Integer factorialNumber(Integer A) { 
        var totalFact; 
            for (i=1; i<=A; i++) {
            totalFact = totalFact * i; 
            }
	return totalFact; 
    }

    Un metodo que regrese un Verdadero si la suma de los dos valores que se reciben es mayor que 20 y que regrese falso si es menor o igual a 20.

    Un metodo que regrese un factorial del valor que se recibe.
}