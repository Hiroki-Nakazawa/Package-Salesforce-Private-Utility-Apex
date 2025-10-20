/**
 * @author H.Nakazawa
 * @since  2025-10-21
 */
@isTest
private class naklab_AsyncApexJobSelectorTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-10-21
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_AsyncApexJobSelector selector = new naklab_AsyncApexJobSelector();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-10-21
     */
    @isTest
    static void findByDeveloperNameTest(){
        // Test Setup
        naklab_AsyncApexJobSelector selector = new naklab_AsyncApexJobSelector();
        // Test
        Test.startTest();
        List<AsyncApexJob> results = selector.selectUnCompleteByApexClassName( TestConfig.TEST_SAMPLE_CLASS );
        Test.stopTest();
    }

}