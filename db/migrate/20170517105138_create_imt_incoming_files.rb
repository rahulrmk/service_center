class CreateImtIncomingFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :imt_incoming_files do |t|#,  {:sequence_start_value => '1 cache 20 order increment by 1'} do |t|
    	t.string :file_name, :limit => 50, :comment => 'the name of the incoming_file'
    	t.index([:file_name], :unique => true, :name => 'imt_incoming_files_01')
    end
  end
end
