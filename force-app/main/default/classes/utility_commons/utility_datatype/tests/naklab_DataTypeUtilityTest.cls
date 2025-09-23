/**
 * @author H.Nakazawa
 * @since  2025-09-23
 */
@isTest
private class naklab_DataTypeUtilityTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedDataTypeUtility utility = new naklab_TestExtendedDataTypeUtility( Schema.User.Name );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getFieldTest(){
        // Test Setup
        naklab_TestExtendedDataTypeUtility utility = new naklab_TestExtendedDataTypeUtility( Schema.User.Name );
        // Test
        Test.startTest();
        Schema.SObjectField result = utility.getField();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getDescribeResultTest(){
        // Test Setup
        naklab_TestExtendedDataTypeUtility utility = new naklab_TestExtendedDataTypeUtility( Schema.User.Name );
        // Test
        Test.startTest();
        Schema.DescribeFieldResult result = utility.getDescribeResult();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getTypeTest(){
        // Test Setup
        naklab_TestExtendedDataTypeUtility utility = new naklab_TestExtendedDataTypeUtility( Schema.User.Name );
        // Test
        Test.startTest();
        Schema.DisplayType result = utility.getType();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getSOAPTypeTest(){
        // Test Setup
        naklab_TestExtendedDataTypeUtility utility = new naklab_TestExtendedDataTypeUtility( Schema.User.Name );
        // Test
        Test.startTest();
        Schema.SoapType result = utility.getSOAPType();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getNameTest(){
        // Test Setup
        naklab_TestExtendedDataTypeUtility utility = new naklab_TestExtendedDataTypeUtility( Schema.User.Name );
        // Test
        Test.startTest();
        String result = utility.getName();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getLocalNameTest(){
        // Test Setup
        naklab_TestExtendedDataTypeUtility utility = new naklab_TestExtendedDataTypeUtility( Schema.User.Name );
        // Test
        Test.startTest();
        String result = utility.getLocalName();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    @isTest
    static void getLabelTest(){
        // Test Setup
        naklab_TestExtendedDataTypeUtility utility = new naklab_TestExtendedDataTypeUtility( Schema.User.Name );
        // Test
        Test.startTest();
        String result = utility.getLabel();
        Test.stopTest();
    }

}