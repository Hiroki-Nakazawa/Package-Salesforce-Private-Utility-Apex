/**
 * @author H.Nakazawa
 * @since  2025-09-26
 */
public without sharing class naklab_NotificationTypeSelector extends naklab_SelectorLayer {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     */
    public naklab_NotificationTypeSelector(){}

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @return `Schema.SObjectType`
     */
    private Schema.SObjectType getSObjectType(){
        // Setting SObjectType
        return Schema.CustomNotificationType.SObjectType;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @return `List<Schema.SObjectField>`
     */
    private List<Schema.SObjectField> getSObjectFields(){
        // Setting SObjectField
        return new List<Schema.SObjectField>{
            Schema.CustomNotificationType.Id            ,
            Schema.CustomNotificationType.DeveloperName
        };
    }

    //*********************************************************************************************
    //   Find Series
    //*********************************************************************************************

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @param  developerName
     * @return `CustomNotificationType`
     */
    public CustomNotificationType findByDeveloperName( String developerName ){
        // Query Setup
        naklab_QueryBuilder query = this.newQueryBuilder()
            .setWhereClause(
                new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND )
                    .add( Schema.CustomNotificationType.DeveloperName , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS_WITH_BIND , 'developerName' )
            );
        // Bind Map
        Map<String,Object> bindMap = new Map<String,Object>{
            'developerName' => developerName
        };
        // Return
        return new naklab_NotificationTypeDomain( (List<CustomNotificationType>)query.query( bindMap , System.AccessLevel.SYSTEM_MODE ) ).getRecordByDeveloperName().get( developerName );
    }

}