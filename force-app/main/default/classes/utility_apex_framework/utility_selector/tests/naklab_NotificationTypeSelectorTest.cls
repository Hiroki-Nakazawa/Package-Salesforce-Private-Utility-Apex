/**
 * @author H.Nakazawa
 * @since  2025-09-26
 */
@isTest
private class naklab_NotificationTypeSelectorTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_NotificationTypeSelector selector = new naklab_NotificationTypeSelector();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     */
    @isTest
    static void findByDeveloperNameTest(){
        // Test Setup
        naklab_NotificationTypeSelector selector = new naklab_NotificationTypeSelector();
        // Test
        Test.startTest();
        CustomNotificationType result = selector.findByDeveloperName( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        Test.stopTest();
        // Assert
        Assert.areEqual( naklab_TestConfig.NOTIFICATION_NAME_STRING , result.DeveloperName , naklab_TestConfig.ASSERT_COMMENT );
    }

}