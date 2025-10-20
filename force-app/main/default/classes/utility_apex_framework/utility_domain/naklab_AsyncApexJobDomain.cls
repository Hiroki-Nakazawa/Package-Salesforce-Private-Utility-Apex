/**
 * @author H.Nakazawa
 * @since  2025-10-21
 */
public without sharing class naklab_AsyncApexJobDomain extends naklab_DomainLayer {
    
    /**
     * @author H.Nakazawa
     * @since  2025-10-21
     */
    public naklab_AsyncApexJobDomain( List<AsyncApexJob> asyncApexJobs ){
        // Initialize
        super( Schema.AsyncApexJob.SObjectType , asyncApexJobs == null ? new List<AsyncApexJob>() : asyncApexJobs );
    }

}