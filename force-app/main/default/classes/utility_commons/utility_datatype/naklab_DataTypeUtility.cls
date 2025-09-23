/**
 * @author H.Nakazawa
 * @since  2025-09-23
 */
public abstract class naklab_DataTypeUtility {

    // SObject Field
    private Schema.SObjectField field;
    // Describe Result
    private Schema.DescribeFieldResult describeResult;

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @param  field
     */
    public naklab_DataTypeUtility( Schema.SObjectField field ){
        this.field          = field;
        this.describeResult = this.field.getDescribe();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `Schema.SObjectField`
     */
    public Schema.SObjectField getField(){
        return this.field;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `Schema.DescribeFieldResult`
     */
    public Schema.DescribeFieldResult getDescribeResult(){
        return this.describeResult;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `Schema.DisplayType`
     */
    public Schema.DisplayType getType(){
        return this.describeResult.getType();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `Schema.SOAPType`
     */
    public Schema.SoapType getSOAPType(){
        return this.describeResult.getSOAPType();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `String`
     */
    public String getName(){
        return this.describeResult.getName();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `String`
     */
    public String getLocalName(){
        return this.describeResult.getLocalName();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `String`
     */
    public String getLabel(){
        return this.describeResult.getLabel();
    }

}