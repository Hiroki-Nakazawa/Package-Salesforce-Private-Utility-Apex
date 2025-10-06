/**
 * @author H.Nakazawa
 * @since  2025-09-29
 */
public virtual class naklab_BulkCalloutUtility {

    // Callout Utilities
    private List<naklab_CalloutUtility> calloutUtilities;

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    public naklab_BulkCalloutUtility(){
        // Set Initialize
        this.calloutUtilities = new List<naklab_CalloutUtility>();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-10-07
     */
    public List<naklab_CalloutUtility> getCalloutUtilities(){
        return this.calloutUtilities;
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     * @param  calloutUtility
     */
    public void addCalloutUtility( naklab_CalloutUtility calloutUtility ){
        // Initialize
        Boolean isContains = false;
        // Loop of Callout Utilities
        for( naklab_CalloutUtility utility : this.calloutUtilities ){
            // Confirm Contains
            if( !utility.hasSameProperties( calloutUtility ) ){ continue; }
            // Confirm Flag
            isContains = true;
        }
        // Add Callout Utility
        if( !isContains ){ this.calloutUtilities.add( calloutUtility ); }
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-29
     */
    public void send(){
        // Loop of Callout Utilities
        for( naklab_CalloutUtility utility : this.calloutUtilities ){
            utility.send();
        }
    }

}