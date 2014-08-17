class Event < ActiveRecord::Base
	has_attached_file :featured_image, :styles => { :large => "800x400" ,:medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/default.jpeg"
  	validates_attachment_content_type :featured_image, :content_type => /\Aimage\/.*\Z/
end
