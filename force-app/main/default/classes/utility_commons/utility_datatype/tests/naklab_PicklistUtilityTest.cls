/**
 * @author H.Nakazawa
 * @since  2025-09-23
 */
@isTest
private class naklab_PicklistUtilityTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_PicklistUtility utility = new naklab_PicklistUtility( Schema.User.UserType );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getAllPicklistEntriesTest(){
        // Test Setup
        naklab_PicklistUtility utility = new naklab_PicklistUtility( Schema.User.UserType );
        // Test
        Test.startTest();
        List<Schema.PicklistEntry> results = utility.getAllPicklistEntries();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getActivePicklistEntriesTest(){
        // Test Setup
        naklab_PicklistUtility utility = new naklab_PicklistUtility( Schema.User.UserType );
        // Test
        Test.startTest();
        List<Schema.PicklistEntry> results = utility.getActivePicklistEntries();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getDefaultPicklistEntryTest(){
        // Test Setup
        naklab_PicklistUtility utility = new naklab_PicklistUtility( Schema.User.UserType );
        // Test
        Test.startTest();
        Schema.PicklistEntry result = utility.getDefaultPicklistEntry();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getAllPicklistEntriesByValueTest(){
        // Test Setup
        naklab_PicklistUtility utility = new naklab_PicklistUtility( Schema.User.UserType );
        // Test
        Test.startTest();
        Map<String,Schema.PicklistEntry> resultByValue = utility.getAllPicklistEntriesByValue();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getActivePicklistEntriesByValueTest(){
        // Test Setup
        naklab_PicklistUtility utility = new naklab_PicklistUtility( Schema.User.UserType );
        // Test
        Test.startTest();
        Map<String,Schema.PicklistEntry> resultByValue = utility.getActivePicklistEntriesByValue();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getAllPicklistEntrieyLabelsByValueTest(){
        // Test Setup
        naklab_PicklistUtility utility = new naklab_PicklistUtility( Schema.User.UserType );
        // Test
        Test.startTest();
        Map<String,String> resultByValue = utility.getAllPicklistEntrieyLabelsByValue();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getActivePicklistEntrieyLabelsByValueTest(){
        // Test Setup
        naklab_PicklistUtility utility = new naklab_PicklistUtility( Schema.User.UserType );
        // Test
        Test.startTest();
        Map<String,String> resultByValue = utility.getActivePicklistEntrieyLabelsByValue();
        Test.stopTest();
    }
    
}