/**
 * @author H.Nakazawa
 * @since  2025-09-26
 */
@isTest
private class naklab_NotificationTypeDomainTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_NotificationTypeDomain domain = new naklab_NotificationTypeDomain( new List<CustomNotificationType>() );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     */
    @isTest
    static void getRecordByDeveloperNameTest(){
        // Custom Notification Type Test Data Setup
        CustomNotificationType customNotificationType = new CustomNotificationType(
            DeveloperName = naklab_TestConfig.TEST_STRING
        );
        // Test Setup
        naklab_NotificationTypeDomain domain = new naklab_NotificationTypeDomain( new List<CustomNotificationType>{ customNotificationType } );
        // Test
        Test.startTest();
        Map<String,CustomNotificationType> resultByDeveloperName = domain.getRecordByDeveloperName();
        Test.stopTest();
        // Assert
        Assert.areEqual( 1 , resultByDeveloperName.size() , naklab_TestConfig.ASSERT_COMMENT );
        Assert.areEqual( customNotificationType.DeveloperName , resultByDeveloperName.get( naklab_TestConfig.TEST_STRING ).DeveloperName , naklab_TestConfig.ASSERT_COMMENT );
    }

}