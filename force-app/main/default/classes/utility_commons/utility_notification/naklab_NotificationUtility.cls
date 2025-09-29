/**
 * @author H.Nakazawa
 * @since  2025-09-26
 */
public virtual class naklab_NotificationUtility {

    // Notification Type Id
    private Id notificationTypeId;
    // Notification Title
    private String title;
    // Notification Body
    private String body;
    // Notification Target Id
    private Id targetId;
    // Notification Target Page Ref
    private String targetPageRef;
    // Notification Target User Ids
    private Set<String> targetUserIds;

    /**
     * @author H.Nakazawa
     * @since  2025-09-26
     * @param  notificationTypeId
     */
    public naklab_NotificationUtility( Id notificationTypeId ){
        // Set Initialize
        this.notificationTypeId = notificationTypeId;
        this.title              = null;
        this.body               = null;
        this.targetId           = null;
        this.targetPageRef      = null;
        this.targetUserIds      = new Set<String>();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  notificationTypeDeveloperName
     */
    public naklab_NotificationUtility( String notificationTypeDeveloperName ){
        // Set Initialize
        this.notificationTypeId = new naklab_NotificationTypeSelector().findByDeveloperName( notificationTypeDeveloperName ).Id;
        this.title              = null;
        this.body               = null;
        this.targetId           = null;
        this.targetPageRef      = null;
        this.targetUserIds      = new Set<String>();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @return `Id`
     */
    public Id getNotificationTypeId(){
        return this.notificationTypeId;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  title
     */
    public void setTitle( String title ){
        this.title = title;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @return `String`
     */
    public String getTitle(){
        return this.title;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  body
     */
    public void setBody( String body ){
        this.body = body;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @return `String`
     */
    public String getBody(){
        return this.body;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  targetId
     */
    public void setTargetId( Id targetId ){
        this.targetId = targetId;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @return `Id`
     */
    public Id getTargetId(){
        return this.targetId;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  targetPageRef
     */
    public void setTargetPageRef( String targetPageRef ){
        this.targetPageRef = targetPageRef;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @return `String`
     */
    public String getTargetPageRef(){
        return this.targetPageRef;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  userIds
     */
    public void addTargetUserIds( Set<String> userIds ){
        this.targetUserIds.addAll( userIds );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @return `Set<String>`
     */
    public Set<String> getTargetUserIds(){
        return this.targetUserIds;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    public void send(){
        // Set Notification
        Messaging.CustomNotification notification = new Messaging.CustomNotification();
        notification.setNotificationTypeId( notificationTypeId );
        // Set Notification Title
        if( !String.isBlank( this.title ) ){ notification.setTitle( this.title ); }
        // Set Notification Body
        if( !String.isBlank( this.body ) ){ notification.setBody( this.body ); }
        // Set Notification Target Id
        if( !String.isBlank( this.targetId ) ){ notification.setTargetId( this.targetId ); }
        // Set Notification Target Page Ref
        if( !String.isBlank( this.targetPageRef ) ){ notification.setTargetPageRef( this.targetPageRef ); }
        // Send
        notification.send( this.targetUserIds );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  notificationUtility
     * @return `Boolean`
     */
    public virtual Boolean hasSameProperties( naklab_NotificationUtility notificationUtility ){
        return this.notificationTypeId == notificationUtility.getNotificationTypeId()
            && this.title              == notificationUtility.getTitle()
            && this.body               == notificationUtility.getBody()
            && this.targetId           == notificationUtility.getTargetId()
            && this.targetPageRef      == notificationUtility.getTargetPageRef();
    }

}