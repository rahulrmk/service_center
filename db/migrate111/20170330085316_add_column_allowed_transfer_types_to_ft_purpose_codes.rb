class AddColumnAllowedTransferTypesToFtPurposeCodes < ActiveRecord::Migration[7.0]
  def change
    add_column :ft_purpose_codes, :allowed_transfer_type, :string, :limit => 50, default: 'ANY', null: false, :comment => "The allowed tranfer types for the purpose Code"    
  end
end
