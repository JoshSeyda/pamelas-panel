class CreateTeacher < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :age
      t.integer :salary
      t.string :education
      t.date :birthday
      t.string :specialty,  array: true, default: []

      t.timestamps
    end
  end
end
