/**
 * @author H.Nakazawa
 * @since  2025-09-29
 */
@isTest
private class naklab_BulkCalloutUtilityTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_BulkCalloutUtility utility = new naklab_BulkCalloutUtility();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-10-07
     */
    @isTest
    static void getCalloutUtilitiesTest(){
        // Test Setup
        naklab_BulkCalloutUtility utility = new naklab_BulkCalloutUtility();
        // Test
        Test.startTest();
        List<naklab_CalloutUtility> result = utility.getCalloutUtilities();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void addCalloutUtilityTest(){
        // Test Data Setup
        naklab_CalloutUtility calloutUtility = new naklab_CalloutUtility( naklab_TestConfig.URL_STRING , naklab_CalloutConfig.Enumeration.CALLOUT_GET );
        // Test Setup
        naklab_BulkCalloutUtility utility = new naklab_BulkCalloutUtility();
        // Test
        Test.startTest();
        utility.addCalloutUtility( calloutUtility );
        utility.addCalloutUtility( calloutUtility );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void sendTest(){
        // Set Mock
        Test.setMock( HttpCalloutMock.class , new naklab_TestCalloutUtilityMock() );
        // Test Data Setup
        naklab_CalloutUtility calloutUtility = new naklab_CalloutUtility( naklab_TestConfig.URL_STRING , naklab_CalloutConfig.Enumeration.CALLOUT_GET );
        // Test Setup
        naklab_BulkCalloutUtility utility = new naklab_BulkCalloutUtility();
        utility.addCalloutUtility( calloutUtility );
        // Test
        Test.startTest();
        utility.send();
        Test.stopTest();
    }

}