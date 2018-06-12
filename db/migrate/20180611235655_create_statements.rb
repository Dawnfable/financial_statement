class CreateStatements < ActiveRecord::Migration[5.1]
  def change
    create_table :statements do |t|
      t.date :date
      t.integer :status, :default => 0

      t.timestamps
    end
  end
end
