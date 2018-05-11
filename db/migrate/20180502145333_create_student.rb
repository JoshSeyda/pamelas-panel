class CreateStudent < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.integer :age
      t.date :birthday
      t.string :education

      t.timestamps
    end
  end
end
