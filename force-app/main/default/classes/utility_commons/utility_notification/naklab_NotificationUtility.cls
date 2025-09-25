/**
 * @author H.Nakazawa
 * @since  2025-09-26
 */
public class naklab_NotificationUtility {
    
    // Notification
    private Messaging.CustomNotification notification;

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @param  notificationTypeId
     * @param  title
     * @param  body
     */
    public naklab_NotificationUtility( Id notificationTypeId , String title , String body ){
        // Set Notification
        this.notification = new Messaging.CustomNotification();
        this.notification.setNotificationTypeId( notificationTypeId );
        this.notification.setTitle( title );
        this.notification.setBody( body );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @param  userIds
     * @param  targetId
     */
    public void sendWithTargetId( Set<String> userIds , Id targetId ){
        // Set Target Id
        this.notification.setTargetId( targetId );
        // Send Notification
        this.notification.send( userIds );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @param  userIds
     * @param  targetPageRef
     */
    public void sendWithTargetPageRef( Set<String> userIds , String targetPageRef ){
        // Set Target Page Ref
        this.notification.setTargetPageRef( targetPageRef );
        // Send Notification
        this.notification.send( userIds );
    }

}