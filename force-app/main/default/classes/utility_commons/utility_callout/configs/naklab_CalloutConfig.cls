/**
 * @author H.Nakazawa
 * @since  2025-09-23
 */
public class naklab_CalloutConfig {
    
    // Callout Type Enumeration
    public enum Enumeration {
        CALLOUT_GET    ,
        CALLOUT_POST   ,
        CALLOUT_PATCH  ,
        CALLOUT_PUT    ,
        CALLOUT_DELETE ,
        CALLOUT_HEAD   ,
        CALLOUT_TRACE
    }
    public static final Map<Enumeration,String> CALLOUT_STRINGS = new Map<Enumeration,String>{
        Enumeration.CALLOUT_GET    => 'GET'    ,
        Enumeration.CALLOUT_POST   => 'POST'   ,
        Enumeration.CALLOUT_PATCH  => 'PATCH'  ,
        Enumeration.CALLOUT_PUT    => 'PUT'    ,
        Enumeration.CALLOUT_DELETE => 'DELETE' ,
        Enumeration.CALLOUT_HEAD   => 'HEAD'   ,
        Enumeration.CALLOUT_TRACE  => 'TRACE'
    };

}