class CreateTeacherNote < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_notes do |t|
      t.integer :teacher_id
      t.string :content

      t.timestamps
    end
  end
end
