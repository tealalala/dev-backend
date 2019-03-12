class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.boolean :status
      t.boolean :is_admin
      t.string :experience
      t.string :career_level

      t.timestamps
    end
  end
end
