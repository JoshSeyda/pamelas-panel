class CreateAdmin < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :firstname
      t.string :lastname
      t.string :username

      t.timestamps
    end
  end
end
