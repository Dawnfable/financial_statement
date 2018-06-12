class AddUserToStatements < ActiveRecord::Migration[5.1]
  def change
    add_reference :statements, :user, foreign_key: true
  end
end
