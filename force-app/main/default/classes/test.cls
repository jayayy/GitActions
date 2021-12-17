public class test
{
    public static String test(){
        String returnString = '';
        try{
        	String baseURL = URL.getSalesforceBaseUrl().toExternalForm(); //getting URL of the Org            
            boolean f1 = baseURL.contains('--rbd');
            boolean f2 = baseURL.contains('--full');
            boolean f3 = (baseUrl.Contains('gskcxeu1.my.salesforce.com/')) || (baseUrl.Contains('gskcxeu2.my.salesforce.com/'))  || (baseUrl.Contains('gskcxam1.my.salesforce.com/'))  || (baseUrl.Contains('gskcxap2.my.salesforce.com/'));
            returnString = f1?'RBD':(f2?'FULL':(f3?'PROD':'DEV')); //can be taken forward to handle empty baseurl as well
        }
        catch(Exception e){
            returnString = 'Unable to identify the org type';
        }
        return returnString;
    }
}