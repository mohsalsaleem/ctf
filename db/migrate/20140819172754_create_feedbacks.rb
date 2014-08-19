class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :message
      t.string :subject
      t.string :email

      t.timestamps
    end
  end
end
