class CreateLogRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :log_records do |t|
      t.references :author, index: true, foreign_key: { to_table: 'users' }
      t.string :name
      t.decimal :amount, default: 0

      t.timestamps
    end
  end
end
