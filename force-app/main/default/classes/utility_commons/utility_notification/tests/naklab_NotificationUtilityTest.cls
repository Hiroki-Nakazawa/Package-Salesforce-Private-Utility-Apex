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
    static void instanceByIdTest(){
        // Test Setup
        CustomNotificationType notificationType = new naklab_NotificationTypeSelector().findByDeveloperName( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        naklab_NotificationUtility utility = new naklab_NotificationUtility( notificationType.Id );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void instanceByDeveloperNameTest(){
        // Test
        Test.startTest();
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void setTitleTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        utility.setTitle( naklab_TestConfig.TEST_STRING );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void setBodyTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        utility.setBody( naklab_TestConfig.TEST_STRING );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void setTargetIdTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        utility.setTargetId( UserInfo.getUserId() );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void setTargetPageRefTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        utility.setTargetPageRef( naklab_TestConfig.PAGEREF_STRING );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void sendTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Utility Setup
        utility.setTitle( naklab_TestConfig.TEST_STRING );
        utility.setBody( naklab_TestConfig.TEST_STRING );
        utility.setTargetId( UserInfo.getUserId() );
        // Test
        Test.startTest();
        utility.send( new Set<String>{ UserInfo.getUserId() } );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     */
    @isTest
    static void sendWithTargetIdTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Utility Setup
        utility.setTitle( naklab_TestConfig.TEST_STRING );
        utility.setBody( naklab_TestConfig.TEST_STRING );
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
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Utility Setup
        utility.setTitle( naklab_TestConfig.TEST_STRING );
        utility.setBody( naklab_TestConfig.TEST_STRING );
        // Test
        Test.startTest();
        utility.sendWithTargetPageRef( new Set<String>{ UserInfo.getUserId() } , naklab_TestConfig.PAGEREF_STRING );
        Test.stopTest();
    }

}