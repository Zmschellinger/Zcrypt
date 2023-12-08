class CreateEncryptionLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :encryption_logs do |t|
      t.string :filename
      t.date :date

      t.timestamps
    end
  end
end
