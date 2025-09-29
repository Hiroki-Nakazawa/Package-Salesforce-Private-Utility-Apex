/**
 * @author H.Nakazawa
 * @since  2025-09-29
 */
public virtual class naklab_BulkNotificationUtility {

    // Notification Utilities
    private List<naklab_NotificationUtility> notificationUtilities;
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    public naklab_BulkNotificationUtility(){
        // Set Initialize
        this.notificationUtilities = new List<naklab_NotificationUtility>();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  notificationUtility
     */
    public void addNotificationUtility( naklab_NotificationUtility notificationUtility ){
        // Initialize
        Boolean isContains = false;
        // Loop of Notification Utilities
        for( naklab_NotificationUtility utility : this.notificationUtilities ){
            // Confirm Contains
            if( !utility.hasSameProperties( notificationUtility ) ){ continue; }
            // Add Target User Ids
            utility.addTargetUserIds( notificationUtility.getTargetUserIds() );
            // Confirm Flag
            isContains = true;
        }
        // Add Target User Ids
        if( !isContains ){ this.notificationUtilities.add( notificationUtility ); }
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  notificationUtility
     */
    public void send(){
        // Loop of Notification Utilities
        for( naklab_NotificationUtility utility : this.notificationUtilities ){
            utility.send();
        }
    }

}