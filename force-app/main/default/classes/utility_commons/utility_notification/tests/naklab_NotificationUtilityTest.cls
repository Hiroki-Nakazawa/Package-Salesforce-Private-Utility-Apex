/**
 * @author H.Nakazawa
 * @since  2025-09-26
 */
@isTest
private class naklab_NotificationUtilityTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     */
    @isTest
    static void instanceTest(){
        // Test Setup
        CustomNotificationType notificationType = new naklab_NotificationTypeSelector().findByDeveloperName( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        naklab_NotificationUtility utility = new naklab_NotificationUtility( notificationType.Id , naklab_TestConfig.TEST_STRING , naklab_TestConfig.TEST_STRING );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     */
    @isTest
    static void sendWithTargetIdTest(){
        // Test Setup
        CustomNotificationType     notificationType = new CustomNotificationTypeSelector().findByDeveloperName( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        naklab_NotificationUtility utility          = new naklab_NotificationUtility( notificationType.Id , naklab_TestConfig.TEST_STRING , naklab_TestConfig.TEST_STRING );
        // Test
        Test.startTest();
        utility.sendWithTargetId( new Set<String>{ UserInfo.getUserId() } , UserInfo.getUserId() );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     */
    @isTest
    static void sendWithTargetPageRefTest(){
        // Test Setup
        CustomNotificationType     notificationType = new CustomNotificationTypeSelector().findByDeveloperName( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        naklab_NotificationUtility utility          = new naklab_NotificationUtility( notificationType.Id , naklab_TestConfig.TEST_STRING , naklab_TestConfig.TEST_STRING );
        // Test
        Test.startTest();
        utility.sendWithTargetPageRef( new Set<String>{ UserInfo.getUserId() } , naklab_TestConfig.PAGEREF_STRING );
        Test.stopTest();
    }

}