/**
 * @author H.Nakazawa
 * @since  2025-09-26
 */
public virtual class naklab_NotificationUtility {

    // Notification
    private Messaging.CustomNotification notification;

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @param  notificationTypeId
     */
    public naklab_NotificationUtility( Id notificationTypeId ){
        // Set Notification
        this.notification = new Messaging.CustomNotification();
        this.notification.setNotificationTypeId( notificationTypeId );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  notificationTypeDeveloperName
     */
    public naklab_NotificationUtility( String notificationTypeDeveloperName ){
        // Get Notification Type Id
        Id notificationTypeId = new naklab_NotificationTypeSelector().findByDeveloperName( notificationTypeDeveloperName ).Id;
        // Set Notification
        this.notification = new Messaging.CustomNotification();
        this.notification.setNotificationTypeId( notificationTypeId );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  title
     */
    public void setTitle( String title ){
        this.notification.setTitle( title );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  body
     */
    public void setBody( String body ){
        this.notification.setBody( body );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  targetId
     */
    public void setTargetId( Id targetId ){
        this.notification.setTargetId( targetId );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  targetPageRef
     */
    public void setTargetPageRef( String targetPageRef ){
        this.notification.setTargetPageRef( targetPageRef );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  userIds
     */
    public void send( Set<String> userIds ){
        this.notification.send( userIds );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @param  userIds
     * @param  targetId
     */
    public void sendWithTargetId( Set<String> userIds , Id targetId ){
        // Set Target Id
        this.setTargetId( targetId );
        // Send Notification
        this.send( userIds );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @param  userIds
     * @param  targetPageRef
     */
    public void sendWithTargetPageRef( Set<String> userIds , String targetPageRef ){
        // Set Target Page Ref
        this.setTargetPageRef( targetPageRef );
        // Send Notification
        this.send( userIds );
    }

}