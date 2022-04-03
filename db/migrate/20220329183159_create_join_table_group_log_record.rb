class CreateJoinTableGroupLogRecord < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :log_records do |t|
      t.index [:group_id, :log_record_id]
      t.index [:log_record_id, :group_id]
    end
  end
end
