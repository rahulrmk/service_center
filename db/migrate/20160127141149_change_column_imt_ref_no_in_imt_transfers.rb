class ChangeColumnImtRefNoInImtTransfers < ActiveRecord::Migration[7.0]
  def change
    change_column :imt_transfers, :imt_ref_no, :string, :limit => 35, :null => true, :comment => "the reference number generated by IMT"
  end
end