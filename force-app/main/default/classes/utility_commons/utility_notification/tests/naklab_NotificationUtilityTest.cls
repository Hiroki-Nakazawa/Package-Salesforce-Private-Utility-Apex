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
    static void getNotificationTypeIdTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        Id result = utility.getNotificationTypeId();
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
    static void getTitleTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        String result = utility.getTitle();
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
    static void getBodyTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        String result = utility.getBody();
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
    static void getTargetIdTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        Id result = utility.getTargetId();
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
    static void getTargetPageRefTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        String result = utility.getTargetPageRef();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void addTargetUserIdsTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        utility.addTargetUserIds( new Set<String>{ UserInfo.getUserId() } );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void getTargetUserIdsTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        Set<String> result = utility.getTargetUserIds();
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
        utility.setTargetPageRef( naklab_TestConfig.PAGEREF_STRING );
        utility.addTargetUserIds( new Set<String>{ UserInfo.getUserId() } );
        // Test
        Test.startTest();
        utility.send();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    @isTest
    static void hasSamePropertiesTest(){
        // Test Setup
        naklab_NotificationUtility utility = new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING );
        // Test
        Test.startTest();
        Boolean result = utility.hasSameProperties( new naklab_NotificationUtility( naklab_TestConfig.NOTIFICATION_NAME_STRING ) );
        Test.stopTest();
    }

}