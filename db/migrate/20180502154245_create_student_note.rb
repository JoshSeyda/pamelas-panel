class CreateStudentNote < ActiveRecord::Migration[5.2]
  def change
    create_table :student_notes do |t|
      t.integer :student_id
      t.string :content

      t.timestamps
    end
  end
end
