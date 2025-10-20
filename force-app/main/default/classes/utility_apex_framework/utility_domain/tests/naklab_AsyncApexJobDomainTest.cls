/**
 * @author H.Nakazawa
 * @since  2025-10-21
 */
@isTest
private class naklab_AsyncApexJobDomainTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-10-21
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        AsyncApexJobDomain domain = new AsyncApexJobDomain( new List<AsyncApexJob>() );
        Test.stopTest();
    }

}