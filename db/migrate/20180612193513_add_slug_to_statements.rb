class AddSlugToStatements < ActiveRecord::Migration[5.1]
  def change
    add_column :statements, :slug, :string
    add_index :statements, :slug, unique: true
  end
end
