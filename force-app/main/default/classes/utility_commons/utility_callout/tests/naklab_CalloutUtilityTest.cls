/**
 * @author H.Nakazawa
 * @since  2025-09-25
 */
@isTest
private class naklab_CalloutUtilityTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-25
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_CalloutUtility utility = new naklab_CalloutUtility( naklab_TestConfig.URL_STRING , naklab_CalloutConfig.Enumeration.CALLOUT_GET );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-25
     */
    @isTest
    static void sendTest(){
        // Set Mock
        Test.setMock( HttpCalloutMock.class , new naklab_TestCalloutUtilityMock() );
        // Test Setup
        naklab_CalloutUtility utility = new naklab_CalloutUtility( naklab_TestConfig.URL_STRING , naklab_CalloutConfig.Enumeration.CALLOUT_GET );
        // Test
        Test.startTest();
        utility.send();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-25
     */
    @isTest
    static void getRequestTest(){
        // Set Mock
        Test.setMock( HttpCalloutMock.class , new naklab_TestCalloutUtilityMock() );
        // Test Setup
        naklab_CalloutUtility utility = new naklab_CalloutUtility( naklab_TestConfig.URL_STRING , naklab_CalloutConfig.Enumeration.CALLOUT_GET );
        // Test
        Test.startTest();
        HttpRequest result = utility.getRequest();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-25
     */
    @isTest
    static void getResponseTest(){
        // Set Mock
        Test.setMock( HttpCalloutMock.class , new naklab_TestCalloutUtilityMock() );
        // Test Setup
        naklab_CalloutUtility utility = new naklab_CalloutUtility( naklab_TestConfig.URL_STRING , naklab_CalloutConfig.Enumeration.CALLOUT_GET );
        // Test
        Test.startTest();
        HttpResponse result = utility.getResponse();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void hasSamePropertiesTest(){
        // Test Setup
        naklab_CalloutUtility utility = new naklab_CalloutUtility( naklab_TestConfig.URL_STRING , naklab_CalloutConfig.Enumeration.CALLOUT_GET );
        // Test
        Test.startTest();
        Boolean result = utility.hasSameProperties( utility );
        Test.stopTest();
    }

}