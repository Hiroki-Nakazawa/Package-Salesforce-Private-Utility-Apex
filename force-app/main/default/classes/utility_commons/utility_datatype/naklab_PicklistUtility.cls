/**
 * @author H.Nakazawa
 * @since  2025-09-23
 */
public class naklab_PicklistUtility extends naklab_DataTypeUtility {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @param  field
     */
    public naklab_PicklistUtility( Schema.SObjectField field ){
        super( field );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `List<Schema.PicklistEntry>`
     */
    public List<Schema.PicklistEntry> getAllPicklistEntries(){
        // Return
        return this.getDescribeResult().getPicklistValues();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `List<Schema.PicklistEntry>`
     */
    public List<Schema.PicklistEntry> getActivePicklistEntries(){
        // Initialize
        List<Schema.PicklistEntry> activeEntries = new List<Schema.PicklistEntry>();
        // Set Active Picklist Entry
        for( Schema.PicklistEntry entry : this.getAllPicklistEntries() ){
            if( entry.isActive() ){ activeEntries.add( entry ); }
        }
        // Return
        return activeEntries;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `Schema.PicklistEntry`
     */
    public Schema.PicklistEntry getDefaultPicklistEntry(){
        // Search Default Picklist Entry
        for( Schema.PicklistEntry entry : this.getAllPicklistEntries() ){
            if( entry.isDefaultValue() ){ return entry; }
        }
        // Return
        return null;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `Map<String,Schema.PicklistEntry>`
     */
    public Map<String,Schema.PicklistEntry> getAllPicklistEntriesByValue(){
        // Initialize
        Map<String,Schema.PicklistEntry> entryByValue = new Map<String,Schema.PicklistEntry>();
        // Set Picklist Entry
        for( Schema.PicklistEntry entry : this.getAllPicklistEntries() ){
            entryByValue.put( entry.getValue() , entry );
        }
        // Return
        return entryByValue;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `Map<String,Schema.PicklistEntry>`
     */
    public Map<String,Schema.PicklistEntry> getActivePicklistEntriesByValue(){
        // Initialize
        Map<String,Schema.PicklistEntry> entryByValue = new Map<String,Schema.PicklistEntry>();
        // Set Picklist Entry
        for( Schema.PicklistEntry entry : this.getActivePicklistEntries() ){
            entryByValue.put( entry.getValue() , entry );
        }
        // Return
        return entryByValue;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `Map<String,String>`
     */
    public Map<String,String> getAllPicklistEntrieyLabelsByValue(){
        // Initialize
        Map<String,String> labelByValue = new Map<String,String>();
        // Set Picklist Entry
        for( Schema.PicklistEntry entry : this.getAllPicklistEntries() ){
            labelByValue.put( entry.getValue() , entry.getLabel() );
        }
        // Return
        return labelByValue;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-23
     * @return `Map<String,String>`
     */
    public Map<String,String> getActivePicklistEntrieyLabelsByValue(){
        // Initialize
        Map<String,String> labelByValue = new Map<String,String>();
        // Set Picklist Entry
        for( Schema.PicklistEntry entry : this.getActivePicklistEntries() ){
            labelByValue.put( entry.getValue() , entry.getLabel() );
        }
        // Return
        return labelByValue;
    }

}