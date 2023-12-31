class CreateFtIncomingRecords  < ActiveRecord::Migration[7.0]
  def change
    create_table :ft_incoming_records do |t|#, {:sequence_start_value => '1 cache 20 order increment by 1'}  do |t|
           t.integer :incoming_file_record_id, :comment => "the foreign key to the incoming_files table" 
           t.string  :file_name, :limit => 50, :comment => "the name of the incoming_file"      
           t.string  :req_version, :limit => 10, :comment => " the number send in the request, this reflects the version that is known to the client"
           t.string  :req_no, :limit => 50, :comment => "the unique reference number to be sent by the client application"
           t.string  :app_id, :limit => 20, :comment => "the unique ID assigned to every application"
           t.string  :purpose_code, :limit => 20, :comment => "the purpose of the transaction"
           t.string  :customer_code, :limit => 50, :comment => "the unique id assigned to customer"
           t.string  :debit_account_no, :limit => 20, :comment => "the account to be debited for the funds transfer"
           t.string  :bene_code, :limit => 50, :comment => "the code assigned to the beneficiary by the customer"
           t.string  :bene_full_name, :limit => 100,:comment => "the full name of the beneficiary"
           t.string  :bene_address1,  :comment => "the address1 of the beneficiary"
           t.string  :bene_address2, :comment => "the address2 of the beneficiary"
           t.string  :bene_address3, :limit => 100, :comment => "the address3 of the beneficiary"
           t.string  :bene_postal_code, :limit => 100, :comment => "the postal code of the beneficiary"
           t.string  :bene_city, :limit => 100, :comment => "the city name of the beneficiary"
           t.string  :bene_state, :limit => 100,:comment => "the state name of the beneficiary"         
           t.string  :bene_country, :limit => 100,:comment => "the country name of the beneficiary"
           t.string  :bene_mobile_no,:limit => 10, :comment => "the mobile no of the beneficiary"
           t.string  :bene_email_id,:limit => 100, :comment => " the email id of the beneficiary"         
           t.string  :bene_account_no, :limit => 20, :comment => "the account no of the beneficiary"
           t.string  :bene_ifsc_code, :limit => 50, :comment => "the ifsc code of the beneficiary account"
           t.string  :bene_mmid, :limit => 50, :comment => "the mmid of the beneficary to do IMPS transaction"
           t.string  :bene_mmid_mobile_no, :limit => 50, :comment => "the network that supports the MMID method of payment"
           t.string  :req_transfer_type, :limit => 4, :comment => "the type of the transfer e.g. NEFT/IMPS/FT/RTGS"
           t.string  :transfer_ccy, :limit => 5, :comment => "the transfer currency code"    
           t.integer :transfer_amount, :comment => "the amount which has to be transferred to the beneficiary"
           t.string  :rmtr_to_bene_note, :limit => 255, :comment => "the friendly note from the remitter to the beneficiary"    
           t.string  :rep_version, :limit => 10, :comment => " the number comes in the reply, this reflects the version that is known to the server"
           t.string  :rep_no,:limit => 50, :comment => "the unique response no sent by API"
           t.integer  :rep_attempt_no, :comment => "the attempt no returned in the response by the api"         
           t.string  :transfer_type, :limit => 4, :comment => "the type of the transfer which has been used for transactions"
           t.string  :low_balance_alert, :comment => "the low balance threshold can be configured for the partners, If the balance in the drawing account drops below this threshold, then the value for this identifier will be true else false"
           t.string  :txn_status_code, :limit => 50, :comment => "the status of the transaction"
           t.string  :txn_status_subcode, :limit => 50, :comment => "the detailed error code that was received from the beneficiary bank"
           t.string  :bank_ref_no, :limit => 50, :comment => "the reference number generated by the bank, and passed on to the payment network"
           t.string  :bene_ref_no, :limit => 50, :comment => "for future use"
           t.index([:incoming_file_record_id], :unique => true, :name => 'ft_incoming_records_01')      
    end
  end
end
