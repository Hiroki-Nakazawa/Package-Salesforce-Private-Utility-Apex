/**
 * @author H.Nakazawa
 * @since  2025-09-23
 */
public virtual class naklab_CalloutUtility {
    
    // Http Request
    private HttpRequest request;
    // Http Response
    private HttpResponse response;

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @param  endpoint
     * @param  method
     */
    public naklab_CalloutUtility( String endpoint , naklab_CalloutConfig.Enumeration method ){
        // Set Http Request
        this.request = new HttpRequest();
        this.request.setEndpoint( endpoint );
        this.request.setMethod( naklab_CalloutConfig.CALLOUT_STRINGS.get( method ) );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     */
    public void send(){
        this.response = new Http().send( this.request );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-25
     * @return `HttpRequest`
     */
    public HttpRequest getRequest(){
        return this.request;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-25
     * @return `HttpResponse`
     */
    public HttpResponse getResponse(){
        return this.response;
    }

}