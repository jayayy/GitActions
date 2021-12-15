@isTest
public class DataManager_DataflowTest {
    @isTest static void simpleInit() {
        DataManager_Dataflow dmDf = new DataManager_Dataflow();
        String[] dataflowNames = dmDf.getDataflows();
        System.debug(dataflowNames);
        System.assertEquals(0, dataflowNames.size());
        //new comment 
        Document dataflowJson = dmDf.getNewDataflow('DTC_Sales');
        System.assertEquals('DTC_Sales_Testing', dataflowJson.Name);
        adsasdada
    }
}