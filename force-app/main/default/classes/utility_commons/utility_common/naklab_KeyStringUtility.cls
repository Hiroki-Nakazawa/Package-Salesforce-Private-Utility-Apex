/**
 * @author H.Nakazawa
 * @since  2025-09-27
 */
public virtual class naklab_KeyStringUtility {

    // Format
    private String format;
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-27
     * @param  format
     */
    public naklab_KeyStringUtility( String format ){
        this.format = format;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-27
     * @param  embeddedStrings
     * @return `String`
     */
    public String getKeyString( List<String> embeddedStrings ){
        return String.format( this.format , embeddedStrings );
    }

}