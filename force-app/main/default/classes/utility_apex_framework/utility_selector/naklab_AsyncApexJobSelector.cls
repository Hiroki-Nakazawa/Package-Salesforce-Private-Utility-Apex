/**
 * @author H.Nakazawa
 * @since  2025-10-21
 */
public without sharing class naklab_AsyncApexJobSelector extends naklab_SelectorLayer {
    
    /**
     * @author H.Nakazawa
     * @since  2025-10-21
     */
    public naklab_AsyncApexJobSelector(){}

    /**
     * @author H.Nakazawa
     * @since  2025-10-21
     * @return `Schema.SObjectType`
     */
    private Schema.SObjectType getSObjectType(){
        // Setting SObjectType
        return Schema.AsyncApexJob.SObjectType;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-10-21
     * @return `List<Schema.SObjectField>`
     */
    private List<Schema.SObjectField> getSObjectFields(){
        // Setting SObjectField
        return new List<Schema.SObjectField>{
            Schema.AsyncApexJob.Id            ,
            Schema.AsyncApexJob.CompletedDate ,
            Schema.AsyncApexJob.JobType       ,
            Schema.AsyncApexJob.Status
        };
    }

    //*********************************************************************************************
    //   Select Series
    //*********************************************************************************************

    /**
     * @author H.Nakazawa
     * @since  2025-10-21
     * @param  apexClassName
     * @return `List<AsyncApexJob>`
     */
    public List<AsyncApexJob> selectUnCompleteByApexClassName( String apexClassName ){
        // Set Uncomplete Status
        Set<String> status = new Set<String>{
            ApplicationConfig.JOB_STATUS_QUEUED     ,
            ApplicationConfig.JOB_STATUS_PREPARING  ,
            ApplicationConfig.JOB_STATUS_HOLDING    ,
            ApplicationConfig.JOB_STATUS_PROCESSING
        };
        // Query Setup
        naklab_QueryBuilder query = this.newQueryBuilder()
            .setWhereClause(
                new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND )
                    .add( Schema.ApexClass.Name      , new List<Schema.SObjectField>{ Schema.AsyncApexJob.ApexClassId } , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS_WITH_BIND , 'apexClassName' )
                    .add( Schema.AsyncApexJob.Status                                                                    , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_IN_WITH_BIND     , 'status'        )
            );
        // Bind Map
        Map<String,Object> bindMap = new Map<String,Object>{
            'apexClassName' => apexClassName ,
            'status'        => status
        };
        // Return
        return (List<AsyncApexJob>)query.query( bindMap , System.AccessLevel.SYSTEM_MODE );
    }

}