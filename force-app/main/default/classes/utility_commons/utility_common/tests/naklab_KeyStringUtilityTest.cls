/**
 * @author H.Nakazawa
 * @since  2025-09-29
 */
@isTest
private class naklab_KeyStringUtilityTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_KeyStringUtility utility = new naklab_KeyStringUtility( naklab_TestConfig.KET_FORMAT_STRING );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void getKeyStringTest(){
        // Test Data
        List<String> embeddedStrings = new List<String>{
            UserInfo.getUserId()    ,
            UserInfo.getProfileId()
        };
        // Test Setup
        naklab_KeyStringUtility utility = new naklab_KeyStringUtility( naklab_TestConfig.KET_FORMAT_STRING );
        // Test
        Test.startTest();
        String keyString = utility.getKeyString( embeddedStrings );
        Test.stopTest();
    }

}