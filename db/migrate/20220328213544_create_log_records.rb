class CreateLogRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :log_records do |t|

      t.timestamps
    end
  end
end
