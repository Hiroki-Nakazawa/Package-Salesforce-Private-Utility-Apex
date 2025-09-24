/**
 * @author H.Nakazawa
 * @since  2025-09-25
 */
@isTest
public class naklab_TestCalloutUtilityMock implements HttpCalloutMock {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-25
     * @param  request
     * @return `HttpResponse`
     */
    public HttpResponse respond( HttpRequest request ){
        // Set Response
        HttpResponse response = new HttpResponse();
        response.setStatus( naklab_TestConfig.CALLOUT_RESULT_OK );
        response.setStatusCode( 200 );
        // Return
        return response;
    }

}