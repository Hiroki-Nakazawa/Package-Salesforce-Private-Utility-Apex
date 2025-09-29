/**
 * @author H.Nakazawa
 * @since  2025-09-29
 */
@isTest
private class naklab_BulkNotificationUtilityTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_BulkNotificationUtility utility = new naklab_BulkNotificationUtility();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void addNotificationUtilityTest(){
        // Test Data Setup
        naklab_NotificationUtility notificationUtility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test Setup
        naklab_BulkNotificationUtility utility = new naklab_BulkNotificationUtility();
        // Test
        Test.startTest();
        utility.addNotificationUtility( notificationUtility );
        utility.addNotificationUtility( notificationUtility );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void sendTest(){
        // Test Data Setup
        naklab_NotificationUtility notificationUtility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Utility Setup
        notificationUtility.setTitle( naklab_TestConfig.TEST_STRING );
        notificationUtility.setBody( naklab_TestConfig.TEST_STRING );
        notificationUtility.setTargetId( UserInfo.getUserId() );
        notificationUtility.setTargetPageRef( naklab_TestConfig.PAGEREF_STRING );
        notificationUtility.addTargetUserIds( new Set<String>{ UserInfo.getUserId() } );
        // Test Setup
        naklab_BulkNotificationUtility utility = new naklab_BulkNotificationUtility();
        utility.addNotificationUtility( notificationUtility );
        // Test
        Test.startTest();
        utility.send();
        Test.stopTest();
    }

}