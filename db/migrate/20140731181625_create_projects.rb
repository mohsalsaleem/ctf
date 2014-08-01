class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :status
      t.string :applications
      t.string :advantages
      t.string :student_details
      t.string :suggestions

      t.timestamps
    end
  end
end
