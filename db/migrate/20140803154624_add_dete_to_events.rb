class AddDeteToEvents < ActiveRecord::Migration
  def up
  	add_column :events, :event_date, :datetime
  end
end
