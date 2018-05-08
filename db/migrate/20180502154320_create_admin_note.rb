class CreateAdminNote < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_notes do |t|
      t.integer :admin_id
      t.string :content

      t.timestamps
    end
  end
end
