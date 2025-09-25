/**
 * @author H.Nakazawa
 * @since  2025-09-26
 */
public without sharing class naklab_NotificationTypeDomain extends naklab_DomainLayer {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @param  customNotificationTypes
     */
    public naklab_NotificationTypeDomain( List<CustomNotificationType> customNotificationTypes ){
        // Initialize
        super( Schema.CustomNotificationType.SObjectType , customNotificationTypes == null ? new List<CustomNotificationType>() : customNotificationTypes );
    }

    //*********************************************************************************************
    //   Get Series
    //*********************************************************************************************

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @return `Map<String,CustomNotificationType>`
     */
    public Map<String,CustomNotificationType> getRecordByDeveloperName(){
        // Initialize
        Map<String,CustomNotificationType> customNotificationTypeByDeveloperName = new Map<String,CustomNotificationType>();
        // Custom Notification Type Developer Name Loop
        for( CustomNotificationType customNotificationType : (List<CustomNotificationType>)this.getRecords() ){
            customNotificationTypeByDeveloperName.put( customNotificationType.DeveloperName , customNotificationType );
        }
        // Return
        return customNotificationTypeByDeveloperName;
    }
    
}