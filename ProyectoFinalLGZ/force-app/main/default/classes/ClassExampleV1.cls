/**
 * @description       : 
 * @author            : arsenio.perez@bluetechgroup.pe
 * @group             : 
 * @last modified on  : 03-31-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ClassExampleV1 { //with without inherited -''
    /**
    * @description 
    * @author arsenio.perez@bluetechgroup.pe | 03-15-2022 
    * @param Boolean mxrecibe1 
    **/
    public static void methodExamV1(Boolean mxrecibe1) {
        Calculadora.suma(1,2); //invocacion desde otra clase
        if(mxrecibe1) {
            System.debug('Hola mundo:');
        }
        else {
            System.debug('Hi World:');   
        }
    }

    //todos son un tipo de dato diferente
    //Todos almacenan valores
    //Todos son staticos
    //Totdos son valores simples o primitivos
    private static Bloolean Variable1{get; set;}
    private static String Variable2{get; set;}
    private static Integer Variable3{get; set;}
    private static Long Variable4{get; set;}
    private static Decimal Variable5{get; set;}
    private static Double Variable6{get; set;}
    private static Object Variable7{get; set;}
    private static Date Variable8{get; set;}
    private static DateTime Variable9{get; set;}
    private static Time Variable10{get; set;}
    private static Id Variable11{get; set;}
    private static blob Variable12{get; set;}


    //Estos ya no son datos primitivos
    //Son Envolventes 
    //Compuestos
    private static List<Object> Variable12{get; set;}
    private static Map<Id,Object> Variable12{get; set;}
    private static Set<Id> Variable12{get; set;}

    //coleccion de constantes
    private static enum variable12{Lunes,Martes,Miercoles}


    //Valores complejos
    public juanito variableJuanito = new juanito();
    variableJuanito.IDs ='';
    variableJuanito.Valor1=0;
    variableJuanito.listaMeses = new List<String>{'Enero','Febrero','Marzo'}

    public raul varrarul= new raul();
    varrarul.IDs ='';
    varrarul.Valor1=0;
    varrarul.listaMeses = new List<String>{'Enero','Febrero','Marzo'}
    varrarul.juanest=variableJuanito;

    public class junito{
        private static id IDs1{get; set;}
        private static Double Valor11{get;set;}
        private static List<String> listaMeses1 {get;set;}
        public juanito(id IDs, Double valor1, List<String> listaMeses) {
            Ids1 = IDs;
            Valor11 = valor1;
            ListaMeses1 = ListaMeses;
        }
    }

    public class raul {
        private static id IDs1 {get; set;}
        private static Double Valor11 {get;set;}
        private static List<String> listaMeses1 {get;set;}
        private static junito juanest1 {get;set;}
        public raul (id IDs, Double valor1, List<String> listaMeses, juanito juantest) {
            IDs1 = IDs;
            Valor11 = Valor1;
            listaMeses1 = listaMeses;
            juanest1 = juantest;
        }
    }
}

